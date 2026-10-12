output "quotes_id" {
  description = "Map of id values across all quotes, keyed the same as var.quotes except keys with no id are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "quotes_application" {
  description = "Map of application values across all quotes, keyed the same as var.quotes except keys with no application are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.application if v.application != null && length(v.application) > 0 }
}
output "quotes_application_fee_amount" {
  description = "Map of application_fee_amount values across all quotes, keyed the same as var.quotes except keys with no application_fee_amount are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.application_fee_amount if v.application_fee_amount != null }
}
output "quotes_application_fee_percent" {
  description = "Map of application_fee_percent values across all quotes, keyed the same as var.quotes except keys with no application_fee_percent are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.application_fee_percent if v.application_fee_percent != null }
}
output "quotes_automatic_tax" {
  description = "Map of automatic_tax values across all quotes, keyed the same as var.quotes except keys with no automatic_tax are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.automatic_tax if v.automatic_tax != null && length(v.automatic_tax) > 0 }
}
output "quotes_collection_method" {
  description = "Map of collection_method values across all quotes, keyed the same as var.quotes except keys with no collection_method are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.collection_method if v.collection_method != null && length(v.collection_method) > 0 }
}
output "quotes_created" {
  description = "Map of created values across all quotes, keyed the same as var.quotes except keys with no created are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.created if v.created != null }
}
output "quotes_currency" {
  description = "Map of currency values across all quotes, keyed the same as var.quotes except keys with no currency are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.currency if v.currency != null && length(v.currency) > 0 }
}
output "quotes_customer" {
  description = "Map of customer values across all quotes, keyed the same as var.quotes except keys with no customer are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.customer if v.customer != null && length(v.customer) > 0 }
}
output "quotes_customer_account" {
  description = "Map of customer_account values across all quotes, keyed the same as var.quotes except keys with no customer_account are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.customer_account if v.customer_account != null && length(v.customer_account) > 0 }
}
output "quotes_default_tax_rates" {
  description = "Map of default_tax_rates values across all quotes, keyed the same as var.quotes except keys with no default_tax_rates are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.default_tax_rates if v.default_tax_rates != null && length(v.default_tax_rates) > 0 }
}
output "quotes_description" {
  description = "Map of description values across all quotes, keyed the same as var.quotes except keys with no description are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.description if v.description != null && length(v.description) > 0 }
}
output "quotes_discounts" {
  description = "Map of discounts values across all quotes, keyed the same as var.quotes except keys with no discounts are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.discounts if v.discounts != null && length(v.discounts) > 0 }
}
output "quotes_expires_at" {
  description = "Map of expires_at values across all quotes, keyed the same as var.quotes except keys with no expires_at are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.expires_at if v.expires_at != null }
}
output "quotes_footer" {
  description = "Map of footer values across all quotes, keyed the same as var.quotes except keys with no footer are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.footer if v.footer != null && length(v.footer) > 0 }
}
output "quotes_from_quote" {
  description = "Map of from_quote values across all quotes, keyed the same as var.quotes except keys with no from_quote are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.from_quote if v.from_quote != null && length(v.from_quote) > 0 }
}
output "quotes_header" {
  description = "Map of header values across all quotes, keyed the same as var.quotes except keys with no header are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.header if v.header != null && length(v.header) > 0 }
}
output "quotes_invoice" {
  description = "Map of invoice values across all quotes, keyed the same as var.quotes except keys with no invoice are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.invoice if v.invoice != null && length(v.invoice) > 0 }
}
output "quotes_invoice_settings" {
  description = "Map of invoice_settings values across all quotes, keyed the same as var.quotes except keys with no invoice_settings are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.invoice_settings if v.invoice_settings != null && length(v.invoice_settings) > 0 }
}
output "quotes_line_items" {
  description = "Map of line_items values across all quotes, keyed the same as var.quotes except keys with no line_items are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.line_items if v.line_items != null && length(v.line_items) > 0 }
}
output "quotes_livemode" {
  description = "Map of livemode values across all quotes, keyed the same as var.quotes except keys with no livemode are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.livemode if v.livemode != null }
}
output "quotes_metadata" {
  description = "Map of metadata values across all quotes, keyed the same as var.quotes except keys with no metadata are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "quotes_number" {
  description = "Map of number values across all quotes, keyed the same as var.quotes except keys with no number are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.number if v.number != null && length(v.number) > 0 }
}
output "quotes_object" {
  description = "Map of object values across all quotes, keyed the same as var.quotes except keys with no object are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.object if v.object != null && length(v.object) > 0 }
}
output "quotes_on_behalf_of" {
  description = "Map of on_behalf_of values across all quotes, keyed the same as var.quotes except keys with no on_behalf_of are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.on_behalf_of if v.on_behalf_of != null && length(v.on_behalf_of) > 0 }
}
output "quotes_status" {
  description = "Map of status values across all quotes, keyed the same as var.quotes except keys with no status are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.status if v.status != null && length(v.status) > 0 }
}
output "quotes_status_transitions" {
  description = "Map of status_transitions values across all quotes, keyed the same as var.quotes except keys with no status_transitions are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.status_transitions if v.status_transitions != null && length(v.status_transitions) > 0 }
}
output "quotes_subscription" {
  description = "Map of subscription values across all quotes, keyed the same as var.quotes except keys with no subscription are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.subscription if v.subscription != null && length(v.subscription) > 0 }
}
output "quotes_subscription_data" {
  description = "Map of subscription_data values across all quotes, keyed the same as var.quotes except keys with no subscription_data are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.subscription_data if v.subscription_data != null && length(v.subscription_data) > 0 }
}
output "quotes_subscription_schedule" {
  description = "Map of subscription_schedule values across all quotes, keyed the same as var.quotes except keys with no subscription_schedule are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.subscription_schedule if v.subscription_schedule != null && length(v.subscription_schedule) > 0 }
}
output "quotes_test_clock" {
  description = "Map of test_clock values across all quotes, keyed the same as var.quotes except keys with no test_clock are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.test_clock if v.test_clock != null && length(v.test_clock) > 0 }
}
output "quotes_total_details" {
  description = "Map of total_details values across all quotes, keyed the same as var.quotes except keys with no total_details are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.total_details if v.total_details != null && length(v.total_details) > 0 }
}
output "quotes_transfer_data" {
  description = "Map of transfer_data values across all quotes, keyed the same as var.quotes except keys with no transfer_data are omitted"
  value       = { for k, v in stripe_quote.quotes : k => v.transfer_data if v.transfer_data != null && length(v.transfer_data) > 0 }
}

