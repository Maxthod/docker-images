FROM communitycloud/docker-client AS docker-client

FROM 'jenkins/slave'
COPY --from=docker-client /usr/bin/docker /usr/bin/docker

 
