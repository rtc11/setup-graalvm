FROM alpine

LABEL "com.github.actions.name"="Github Action for setup-graalvm"
LABEL "com.github.actions.description"="Downloads GraalVM as tar.gz file, extracts it and exports required environment variables."
LABEL "com.github.actions.icon"="download"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="http://github.com/rtc11/setup-graalvm"
LABEL "homepage"="http://github.com/rtc11/setup-graalvm"
LABEL "maintainer"="Robin <https://github.com/rtc11>"

RUN apk add --no-cache ca-certificates

COPY setup-graalvm.sh /usr/local/bin
RUN chmod +x /usr/local/bin/setup-graalvm.sh

ENTRYPOINT ["/usr/local/bin/setup-graalvm.sh"]
CMD ["--help"]