/* data "aws_secretsmanager_secret_version" "db_credentials" {
  secret_id = "my-db-credentials"
}

locals {
  db_username = jsondecode(data.aws_secretsmanager_secret_version.db_credentials.secret_string)["username"]
  db_password = jsondecode(data.aws_secretsmanager_secret_version.db_credentials.secret_string)["password"]
}
  */