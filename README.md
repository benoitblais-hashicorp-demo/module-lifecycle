<!-- BEGIN_TF_DOCS -->
# Module Lifecycle Demo

This demo focuses on the consumer experience after a Terraform module has been provisioned, illustrating the "day 2" lifecycle. It
demonstrates how users interact with modules that are managed and potentially deprecated by a platform team, including the steps and
user experience when a module is marked as deprecated or revoked. The demo highlights best practices for module consumption,
communication of deprecation, and safe migration strategies in real-world infrastructure as code workflows.

## What This Demo Demonstrates

Key Integration Points

- **Module Registry Integration**: Demonstrates how consumers source modules from a central registry.
- **Deprecation/Revocation Workflow**: Illustrates the process and user experience when a module is marked as deprecated or revoked,
including notifications and migration guidance.
- **Documentation and Communication**: Highlights the importance of clear documentation and communication channels between platform and
consumer teams regarding module lifecycle events.

## Demo Components

1. **Terraform Configuration Files**:

  - **main.tf**: Contains the primary resources and module usage.
  - **variables.tf**: Defines input variables for customizing the module.
  - **outputs.tf**: Specifies outputs that are exported after applying the configuration.

2. **Required Variables**:

Before running this demo, ensure you provide values for the following required variables (see variables.tf for details):

   - `repository_name`: The name of the repository to be managed or created.
   - `repository_description`: A description for the repository.

3. **Notifications and Workspace Configuration**:

To fully experience the module lifecycle (including deprecation and revocation events), configure notifications in your Terraform
workspace. For example, enable email notifications for run events or policy checks to receive timely updates about module status changes.

Refer to your Terraform Cloud or Enterprise documentation for instructions on setting up email notifications or integrating with other
notification channels (e.g., Slack, webhooks).

## How Module Lifecycle Works in This Demo

When a module is deprecated, consumers receive a notification (such as an email or workspace alert) informing them of the deprecation
and providing guidance for migration or updates. This ensures that users are aware of upcoming changes and can plan accordingly. If a
module is revoked, it becomes unavailable for use—consumers will no longer be able to deploy or update infrastructure with the revoked
module, ensuring compliance and preventing the use of unsupported resources.

### The Workflow

1. **Provisioning**: The consumer provisions a GitHub repository using a specific version of the module.
2. **Deprecation**: The platform team marks this module version as deprecated. A notification is automatically sent to the consumer,
alerting them to the deprecation and providing migration guidance.
3. **Upgrade**: The consumer updates their configuration to use the new, recommended version of the module.
4. **Revocation**: The platform team marks the new version as revoked. At this point, the consumer can no longer provision or update the
repository using the revoked module version. Any attempt to do so will be blocked, ensuring only supported module versions are used.

This workflow demonstrates the full lifecycle of a module from initial provisioning, through deprecation and notification, to enforced
revocation, ensuring a safe and well-communicated upgrade path for consumers.

## Demo Value Proposition

- ✅ Provides a hands-on example of Terraform module best practices.
- ✅ Demonstrates safe and repeatable infrastructure changes.
- ✅ Helps teams understand module versioning and lifecycle management.
- ✅ Serves as a template for building robust, reusable Terraform modules.

## Documentation

## Requirements

The following requirements are needed by this module:

- <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) (>= 1.13.0)

- <a name="requirement_github"></a> [github](#requirement\_github) (~>6.6.0)

- <a name="requirement_random"></a> [random](#requirement\_random) (3.7.2)

## Modules

The following Modules are called:

### <a name="module_repositories"></a> [repositories](#module\_repositories)

Source: app.terraform.io/benoitblais-hashicorp/repositories/github

Version: 0.0.1

## Required Inputs

No required inputs.

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_repository_description"></a> [repository\_description](#input\_repository\_description)

Description: (Optional) The description of the repository.

Type: `string`

Default: `"Repository created to demonstrate module lifecycle in Terraform"`

### <a name="input_repository_name"></a> [repository\_name](#input\_repository\_name)

Description: (Optional) The name of the repository.

Type: `string`

Default: `"module-lifecycle-demo"`

## Resources

The following resources are used by this module:

- [random_id.this](https://registry.terraform.io/providers/hashicorp/random/3.7.2/docs/resources/id) (resource)

## Outputs

The following outputs are exported:

### <a name="output_git_clone_url"></a> [git\_clone\_url](#output\_git\_clone\_url)

Description: URL that can be provided to git clone to clone the repository anonymously via the git protocol.

### <a name="output_html_url"></a> [html\_url](#output\_html\_url)

Description: URL to the repository on the web

<!-- markdownlint-enable -->
<!-- END_TF_DOCS -->