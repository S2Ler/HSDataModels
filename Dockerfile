FROM swift:4.2
USER root
LABEL "com.github.actions.name"="HSDataModelsTests"
LABEL "com.github.actions.description"=""
LABEL "com.github.actions.icon"="airplay"
LABEL "com.github.actions.color"="orange"
LABEL "repository"="https://github.com/diejmon/HSDataModels.git"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="diejmon@gmail.com"
RUN apt-get update && apt-get install -y git
RUN mkdir /HSDataModels
WORKDIR /HSDataModels
COPY . /HSDataModels
