# One-shot instance configurator for the selfhost compose stack.
# The compose file intentionally mounts no host files: build platforms clone
# the repository outside the host filesystem (Coolify helper container), so a
# bind-mounted ./selfhost/configure.py resolves to a missing host path and
# Docker materializes an empty directory instead of the script.
FROM docker.io/library/python:3.13-alpine
COPY selfhost/configure.py /configure.py
