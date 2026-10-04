# Embedded Deployment Notes

This archive is meant for Linux embedded Arris devices and uses the following conventions:

- Uses USB installation flow
- Installs into `/opt/bell_familyjr`
- Expects a Linux embedded environment
- Designed for older system libraries and minimal runtime assumptions
- Intended for historical compatibility, not general desktop use
- Uses Emby as the media-server backend for the legacy archive

## Important Notes

- Keep the package small and portable
- Validate the binary on target hardware before wider rollout
- Do not install on unsupported systems
- Use a separate loader for each build target
- Include version notes per year
- Emby integration should live in `/opt/emby`
