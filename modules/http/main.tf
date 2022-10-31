data "http" "terraform-check" {
  
  url = var.url

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}