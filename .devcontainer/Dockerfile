FROM ghcr.io/league-examples/python-ai-devcontainer:latest


# copy requirements list into layer of dev image
COPY requirements.txt /workspaces/session/requirements-local.txt
RUN python -m pip install --upgrade pip
RUN pip --disable-pip-version-check --no-cache-dir install -r /workspaces/session/requirements-local.txt


