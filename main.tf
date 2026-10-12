resource "stripe_quote" "quotes" {
  for_each = var.quotes

  application_fee_amount  = each.value.application_fee_amount
  application_fee_percent = each.value.application_fee_percent
  automatic_tax           = each.value.automatic_tax
  collection_method       = each.value.collection_method
  customer                = each.value.customer
  customer_account        = each.value.customer_account
  default_tax_rates       = each.value.default_tax_rates
  description             = each.value.description
  discounts               = each.value.discounts
  expires_at              = each.value.expires_at
  footer                  = each.value.footer
  from_quote              = each.value.from_quote
  header                  = each.value.header
  invoice_settings        = each.value.invoice_settings
  line_items              = each.value.line_items
  metadata                = each.value.metadata
  on_behalf_of            = each.value.on_behalf_of
  subscription_data       = each.value.subscription_data
  test_clock              = each.value.test_clock
  transfer_data           = each.value.transfer_data
}

