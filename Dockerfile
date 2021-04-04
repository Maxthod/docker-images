FROM docker AS docker-client
FROM mikefarah/yq AS yq-client
FROM jenkins/agent:alpine
COPY --from=docker-client /usr/local/bin/docker /usr/bin/docker
COPY --from=yq-client /usr/bin/yq /usr/bin/yq
