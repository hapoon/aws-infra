data "aws_organizations_organization" "my_org" {}

data "aws_organizations_organizational_units" "units" {
  parent_id = data.aws_organizations_organization.my_org.roots[0].id
}

resource "aws_organizations_organizational_unit" "develop_a" {
  name      = "Aサービス事業部"
  parent_id = data.aws_organizations_organization.my_org.roots[0].id
}

resource "aws_organizations_organizational_unit" "develop_a1group" {
  name      = "A1機能グループ"
  parent_id = aws_organizations_organizational_unit.develop_a.id
}

resource "aws_organizations_organizational_unit" "develop_a2group" {
  name      = "A2機能グループ"
  parent_id = aws_organizations_organizational_unit.develop_a.id
}

resource "aws_organizations_organizational_unit" "develop_b" {
  name      = "Bサービス事業部"
  parent_id = data.aws_organizations_organization.my_org.roots[0].id
}

resource "aws_organizations_organizational_unit" "develop_b1group" {
  name      = "B1機能グループ"
  parent_id = aws_organizations_organizational_unit.develop_b.id
}

resource "aws_organizations_organizational_unit" "develop_c" {
  name      = "Cサービス事業部"
  parent_id = data.aws_organizations_organization.my_org.roots[0].id
}

resource "aws_organizations_organizational_unit" "develop_d" {
  name      = "Dサービス事業部"
  parent_id = data.aws_organizations_organization.my_org.roots[0].id
}

