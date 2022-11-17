# AI services opt-out policy
resource "aws_organizations_policy" "ai_services_opt_out" {
  name        = "Opt-out AWS AI services"
  description = "Opt-out AWS AI services. Opt out of all AI services for all accounts in the organization"
  type = "AISERVICES_OPT_OUT_POLICY"
  # Policy source 
  # https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out_syntax.html
  content = <<CONTENT
  {
      "services": {
          "@@operators_allowed_for_child_policies": ["@@none"],
          "default": {
              "@@operators_allowed_for_child_policies": ["@@none"],
              "opt_out_policy": {
                  "@@operators_allowed_for_child_policies": ["@@none"],
                  "@@assign": "optOut"
              }
          }
      }
  }
CONTENT
}