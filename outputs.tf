output "quotes_id" {
  description = "Map of id values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.id }
}
output "quotes_application" {
  description = "Map of application values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.application }
}
output "quotes_application_fee_amount" {
  description = "Map of application_fee_amount values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.application_fee_amount }
}
output "quotes_application_fee_percent" {
  description = "Map of application_fee_percent values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.application_fee_percent }
}
output "quotes_automatic_tax" {
  description = "Map of automatic_tax values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.automatic_tax }
}
output "quotes_collection_method" {
  description = "Map of collection_method values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.collection_method }
}
output "quotes_created" {
  description = "Map of created values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.created }
}
output "quotes_currency" {
  description = "Map of currency values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.currency }
}
output "quotes_customer" {
  description = "Map of customer values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.customer }
}
output "quotes_customer_account" {
  description = "Map of customer_account values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.customer_account }
}
output "quotes_default_tax_rates" {
  description = "Map of default_tax_rates values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.default_tax_rates }
}
output "quotes_description" {
  description = "Map of description values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.description }
}
output "quotes_discounts" {
  description = "Map of discounts values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.discounts }
}
output "quotes_expires_at" {
  description = "Map of expires_at values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.expires_at }
}
output "quotes_footer" {
  description = "Map of footer values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.footer }
}
output "quotes_from_quote" {
  description = "Map of from_quote values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.from_quote }
}
output "quotes_header" {
  description = "Map of header values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.header }
}
output "quotes_invoice" {
  description = "Map of invoice values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.invoice }
}
output "quotes_invoice_settings" {
  description = "Map of invoice_settings values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.invoice_settings }
}
output "quotes_line_items" {
  description = "Map of line_items values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.line_items }
}
output "quotes_livemode" {
  description = "Map of livemode values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.livemode }
}
output "quotes_metadata" {
  description = "Map of metadata values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.metadata }
}
output "quotes_number" {
  description = "Map of number values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.number }
}
output "quotes_object" {
  description = "Map of object values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.object }
}
output "quotes_on_behalf_of" {
  description = "Map of on_behalf_of values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.on_behalf_of }
}
output "quotes_status" {
  description = "Map of status values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.status }
}
output "quotes_status_transitions" {
  description = "Map of status_transitions values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.status_transitions }
}
output "quotes_subscription" {
  description = "Map of subscription values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.subscription }
}
output "quotes_subscription_data" {
  description = "Map of subscription_data values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.subscription_data }
}
output "quotes_subscription_schedule" {
  description = "Map of subscription_schedule values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.subscription_schedule }
}
output "quotes_test_clock" {
  description = "Map of test_clock values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.test_clock }
}
output "quotes_total_details" {
  description = "Map of total_details values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.total_details }
}
output "quotes_transfer_data" {
  description = "Map of transfer_data values across all quotes, keyed the same as var.quotes"
  value       = { for k, v in stripe_quote.quotes : k => v.transfer_data }
}

