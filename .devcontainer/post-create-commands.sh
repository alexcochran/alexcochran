#!/bin/bash
# .devcontainer/post-create-commands.sh
#
# Extension script containing shell commands that are run once the container has been created.
# --------------------------------------------------------------------------------------------

# Provide permissions to the session to create and delete files
sudo chmod -R 777 "$CONTAINER_WORKSPACE_FOLDER"

# Install Poetry for Python dependency management and packaging
curl -sSL https://install.python-poetry.org | python3 -

# Tell Poetry to create the virtualenv inside the project's root directory.
#
# All Poetry configurations are stored in /home/vscode/.config/pypoetry/config.toml within the container.
#
# https://python-poetry.org/docs/configuration/#virtualenvsin-project
poetry config virtualenvs.in-project true

# Get the latest versions of dependencies and update the `poetry.lock` file. Only dependencies without specific version
# constraints will be updated.
poetry update

# Install depdendencies
poetry install
