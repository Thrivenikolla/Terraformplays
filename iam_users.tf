variable "users" {
    default = {
        "sri" = "Dev",
        "Thri" = "QA"
    }
}
resource "aws_iam_user" "user" {
    for_each = var.users
    name = each.key
    tags = {
        Name = each.value
    }
}
