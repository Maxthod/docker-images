FROM communitycloud/docker-client AS docker-client

FROM 'jenkins/slave'
COPY --from=docker-client /usr/bin/docker /usr/bin/docker
COPY --from=docker-client /usr/lib/x86_64-linux-gnu/libapparmor.so.1 /usr/lib/x86_64-linux-gnu/libapparmor.so.1
COPY --from=docker-client /lib/x86_64-linux-gnu/libdevmapper.so.1.02.1 /lib/x86_64-linux-gnu/libdevmapper.so.1.02.1