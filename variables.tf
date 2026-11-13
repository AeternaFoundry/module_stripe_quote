variable "quotes" {
  description = <<EOT
Map of quotes, attributes below
Optional:
    - application_fee_amount
    - application_fee_percent
    - automatic_tax
    - collection_method
    - customer
    - customer_account
    - default_tax_rates
    - description
    - discounts
    - expires_at
    - footer
    - from_quote
    - header
    - invoice_settings
    - line_items
    - metadata
    - on_behalf_of
    - subscription_data
    - test_clock
    - transfer_data
EOT

  type = map(object({
    application_fee_amount  = optional(number)
    application_fee_percent = optional(number)
    automatic_tax = optional(object({
      enabled = bool
      liability = optional(object({
        account = optional(string)
        type    = string
      }))
    }))
    collection_method = optional(string)
    customer          = optional(string)
    customer_account  = optional(string)
    default_tax_rates = optional(list(string))
    description       = optional(string)
    discounts = optional(list(object({
      coupon         = optional(string)
      discount       = optional(string)
      promotion_code = optional(string)
    })))
    expires_at = optional(number)
    footer     = optional(string)
    from_quote = optional(object({
      is_revision = optional(bool)
      quote       = string
    }))
    header = optional(string)
    invoice_settings = optional(object({
      days_until_due = optional(number)
      issuer = optional(object({
        account = optional(string)
        type    = string
      }))
    }))
    line_items = optional(list(object({
      discounts = optional(list(object({
        coupon         = optional(string)
        discount       = optional(string)
        promotion_code = optional(string)
      })))
      price = optional(string)
      price_data = optional(object({
        currency = string
        product  = string
        recurring = optional(object({
          interval       = string
          interval_count = optional(number)
        }))
        tax_behavior        = optional(string)
        unit_amount         = optional(number)
        unit_amount_decimal = optional(number)
      }))
      quantity  = optional(number)
      tax_rates = optional(list(string))
    })))
    metadata     = optional(map(string))
    on_behalf_of = optional(string)
    subscription_data = optional(object({
      billing_mode = optional(object({
        flexible = optional(object({
          proration_discounts = optional(string)
        }))
        type = string
      }))
      description       = optional(string)
      effective_date    = optional(number)
      metadata          = optional(map(string))
      trial_period_days = optional(number)
    }))
    test_clock = optional(string)
    transfer_data = optional(object({
      amount         = optional(number)
      amount_percent = optional(number)
      destination    = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.quotes : (
        v.automatic_tax == null || (v.automatic_tax.liability == null || (contains(["account", "self"], v.automatic_tax.liability.type)))
      )
    ])
    error_message = "must be one of: \"account\", \"self\""
  }
  validation {
    condition = alltrue([
      for k, v in var.quotes : (
        v.collection_method == null || (contains(["charge_automatically", "send_invoice"], v.collection_method))
      )
    ])
    error_message = "must be one of: \"charge_automatically\", \"send_invoice\""
  }
  validation {
    condition = alltrue([
      for k, v in var.quotes : (
        v.invoice_settings == null || (v.invoice_settings.issuer == null || (contains(["account", "self"], v.invoice_settings.issuer.type)))
      )
    ])
    error_message = "must be one of: \"account\", \"self\""
  }
  validation {
    condition = alltrue([
      for k, v in var.quotes : (
        v.subscription_data == null || (v.subscription_data.billing_mode == null || (v.subscription_data.billing_mode.flexible == null || (v.subscription_data.billing_mode.flexible.proration_discounts == null || (contains(["included", "itemized"], v.subscription_data.billing_mode.flexible.proration_discounts)))))
      )
    ])
    error_message = "must be one of: \"included\", \"itemized\""
  }
  validation {
    condition = alltrue([
      for k, v in var.quotes : (
        v.subscription_data == null || (v.subscription_data.billing_mode == null || (contains(["classic", "flexible"], v.subscription_data.billing_mode.type)))
      )
    ])
    error_message = "must be one of: \"classic\", \"flexible\""
  }
}

