#!/bin/bash
# .devcontainer/post-start-commands.sh
#
# Extension script containing shell commands that are run once the container has been started.
# --------------------------------------------------------------------------------------------

# Allow Git to be used in the development container
git config --global --add safe.directory "$CONTAINER_WORKSPACE_FOLDER"
