FROM develar/java

ENV ZK_HOSTS 127.0.0.1:2181
EXPOSE 9000

RUN apk update && apk add bash

ADD /dist /dist/
RUN unzip -q -d / /dist/kafka-manager-1.2.6.zip

ENTRYPOINT []
CMD /kafka-manager-1.2.6/bin/kafka-manager
