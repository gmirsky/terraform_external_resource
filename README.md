# Example of a Terraform External Resource

This is a sample implementation of Terraform's external resource and provider.

## Objective

The Terraform external provider makes it possible to write separate programs that can participate in the Terraform workflow by implementing a specific protocol.

In this example we are using the bash command, `ncal -e`,  to obtain the date of the Easter holiday. Once the floating Easter Sunday holiday is known, then the date for Good Friday, the New York Stock Exchange holiday can be calculated.

Why can't you calculate this in Terraform? Terraform's numeric and date processing leaves a lot to be desired so we will be using the bash `ncal -e` command to obtain the date. This is what the Terraform external provider is for, let another program that can do the task better and quicker do it.

## Example run

```bash
terraform apply tfplan                                                                                       

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

easter_date = tomap({
  "day" = "31"
  "month" = "March"
  "year" = "2024"
})
easter_day = "31"
easter_month = "March"
easter_month_numeric = 3
easter_year = "2024"
good_friday_date = "2024-03-29T00:00:00Z"
```
