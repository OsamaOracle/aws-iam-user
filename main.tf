resource "aws_iam_user" "user" {
  name                 = var.name
  path                 = var.path
  permissions_boundary = var.permissions_boundary
  force_destroy        = var.force_destroy
  tags                 = var.tags
}

resource "aws_iam_user_policy" "inline_policy" {
  for_each = var.inline_policies
  name     = each.key
  policy   = each.value
  user     = aws_iam_user.user.name
}

resource "aws_iam_policy_attachment" "managed_attachment" {
  for_each   = var.policy_arns
  name       = format("%s-attachment", each.key)
  policy_arn = each.value
  users      = [aws_iam_user.user.name]
}
