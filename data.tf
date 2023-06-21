data "external" "external_resopurce" {
  program = ["bash", "ncalEaster.sh"]
  query = {
    yyyy = var.year
  }
}
#