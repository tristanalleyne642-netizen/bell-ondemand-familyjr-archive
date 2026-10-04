# Bell On Demand Family Jr Archive

## Embedded deployment notes

This archive is meant for Linux embedded Arris devices and uses the following conventions:

- Uses USB installation flow
- Installs into `/opt/bell_familyjr`
- Expects a Linux embedded environment
- Designed for older system libraries and minimal runtime assumptions
- Intended for historical compatibility, not general desktop use

## Important notes

- Keep the package small and portable
- Validate the binary on target hardware before wider rollout
- Do not install on unsupported systems
- Use a separate loader for each build target
- Include version notes per year
