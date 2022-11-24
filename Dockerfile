ARG TAG_NAME=bionic

FROM ubuntu:${TAG_NAME}

LABEL version="1.0" description="Ambiente de desenvolvimento em sistema operacional GNU/Linux"

# Você pode alterar o nome do usuário para o nome que vc quiser
ARG USER=joshua

RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
	&& localedef -i pt_BR -c -f UTF-8 -A /usr/share/locale/locale.alias pt_BR.UTF-8

ENV LANG pt_BR.utf8

RUN useradd --create-home ${USER}
RUN usermod -a -G root ${USER}

COPY . /home/${USER}

WORKDIR /home/${USER}

USER ${USER}