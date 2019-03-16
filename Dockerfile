FROM golang:1.12-alpine
MAINTAINER Gary Hetzel <its@gary.cool> (https://gary.cool)

LABEL "com.github.actions.name"="Go Release Binary"
LABEL "com.github.actions.description"="Automate publishing Go build artifacts for GitHub releases"
LABEL "com.github.actions.icon"="cpu"
LABEL "com.github.actions.color"="orange"

LABEL "name"="Automate publishing Go build artifacts for GitHub releases through GitHub Actions"
LABEL "version"="1.12"
LABEL "repository"="http://github.com/ghetzel/go-release.action"
LABEL "homepage"="http://github.com/ghetzel"

LABEL "maintainer"="Gary Hetzel <its@gary.cool> (https://gary.cool)"

RUN apk add --no-cache curl jq git make

ADD entrypoint.sh /entrypoint.sh
ADD build.sh /build.sh
ENTRYPOINT ["/entrypoint.sh"]
