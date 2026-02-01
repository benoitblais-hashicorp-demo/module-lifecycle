<!-- BEGIN_TF_DOCS -->
# Module Lifecycle Demo

This demo focuses on the consumer experience after a Terraform module has been provisioned, illustrating the "day 2" lifecycle. It demonstrates how users interact with modules that are managed and potentially deprecated by a platform team, including the steps and user experience when a module is marked as deprecated or retired. The demo highlights best practices for module consumption, communication of deprecation, and safe migration strategies in real-world infrastructure as code workflows.

## What This Demo Demonstrates

### Key Integration Points

- **Module Registry Integration**: Demonstrates how consumers source modules from a central registry and how updates or deprecations are communicated.
- **Version Management**: Shows how version constraints and updates are handled between consumers and the platform team.
- **Deprecation Workflow**: Illustrates the process and user experience when a module is marked as deprecated, including notifications and migration guidance.
- **CI/CD Integration**: Integrates module lifecycle events (such as updates or deprecation) into automated pipelines for validation and enforcement.
- **State Management**: Ensures that changes to modules are safely reflected in Terraform state, minimizing risk during updates or deprecation.
- **Documentation and Communication**: Highlights the importance of clear documentation and communication channels between platform and consumer teams regarding module lifecycle events.

## Demo Components

- **main.tf**: Core logic for resource creation and management.
- **variables.tf**: Input variables for module customization.
- **outputs.tf**: Outputs exported by the module.
- **providers.tf**: Provider configuration for the demo.
- **versions.tf**: Version constraints for Terraform and providers.
- **README.md**: Documentation for module usage.
- **docs/**: Additional documentation and templates.

## How Module Lifecycle Works in This Demo

1. **Initialization**: The module is initialized with required providers and variables.
2. **Provisioning**: Resources are created based on the configuration in `main.tf`.
3. **Update**: Changes to variables or configuration demonstrate how updates are managed and applied.
4. **Destruction**: Resources are safely destroyed, showing the teardown process and state management.

## Demo Value Proposition

- Provides a hands-on example of Terraform module best practices.
- Demonstrates safe and repeatable infrastructure changes.
- Helps teams understand module versioning and lifecycle management.
- Serves as a template for building robust, reusable Terraform modules.

## Documentation

## Requirements

The following requirements are needed by this module:

- <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) (>= 1.13.0)

- <a name="requirement_github"></a> [github](#requirement\_github) (~> 6.10.0)

- <a name="requirement_random"></a> [random](#requirement\_random) (3.7.2)

## Modules

The following Modules are called:

### <a name="module_repositories"></a> [repositories](#module\_repositories)

Source: app.terraform.io/benoitblais-hashicorp/repositories/github

Version: 0.0.1

## Required Inputs

No required inputs.

## Optional Inputs

No optional inputs.

## Resources

The following resources are used by this module:

- [random_id.this](https://registry.terraform.io/providers/hashicorp/random/3.7.2/docs/resources/id) (resource)

## Outputs

No outputs.

<!-- markdownlint-enable -->
<!-- END_TF_DOCS -->