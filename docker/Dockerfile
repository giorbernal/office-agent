# Usa la imagen base de Ubuntu 22.04
FROM ubuntu:22.04

# Evita interacciones de usuario durante la instalación de paquetes
ENV DEBIAN_FRONTEND=noninteractive

# Actualiza el sistema e instala Python 3.10 y pip
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl vim make pipx \
    python3.10 \
    python3-pip \
    python3.10-dev \
    python3.10-venv \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Configura python3.10 como el comando 'python' predeterminado
RUN ln -s /usr/bin/python3.10 /usr/bin/python

# Instalar poetry
#RUN pipx ensurepath \
#    && echo 'eval "$(register-python-argcomplete pipx)"' >> ~/.bashrc \
#    && source ~/.bashrc \
#    && pipx install poetry

RUN curl -fsSL https://opencode.ai/install | bash

WORKDIR /workspace

CMD ["/root/.opencode/bin/opencode","web","--port","4096","--hostname","0.0.0.0"]

