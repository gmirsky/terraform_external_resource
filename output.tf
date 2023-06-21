output "easter_date" {
  description = "Easter date calculated by bash ncal command"
  value       = data.external.external_resopurce.result
  sensitive   = false
}
#
output "easter_month" {
  description = "Easter month calculated by bash ncal command"
  value       = data.external.external_resopurce.result.month
  sensitive   = false

}
#
output "easter_month_numeric" {
  description = "Easter month calculated by bash ncal command"
  value       = data.external.external_resopurce.result.month == "March" ? 3 : 4
  sensitive   = false

}
#
output "easter_year" {
  description = "Easter year calculated by bash ncal command"
  value       = data.external.external_resopurce.result.year
  sensitive   = false
}
#
output "easter_day" {
  description = "Easter day calculated by bash ncal command"
  value       = data.external.external_resopurce.result.day
  sensitive   = false
}

output "good_friday_date" {
  description = "Good Friday date calculated by bash ncal command"
  value = timeadd(
    "${data.external.external_resopurce.result.year}-${data.external.external_resopurce.result.month == "March" ? "03" : "04"}-${data.external.external_resopurce.result.day}T00:00:00Z",
    "-48h"
  )
  sensitive = false
}
#
