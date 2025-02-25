FROM amazoncorretto:8-alpine-jre

ARG version

WORKDIR /

RUN wget -O scoreboard.zip https://github.com/rollerderby/scoreboard/releases/download/$version/crg-scoreboard_$version.zip
RUN unzip scoreboard.zip
RUN mv crg-scoreboard_$version scoreboard
WORKDIR /scoreboard

ENTRYPOINT ["/bin/sh", "-c", "java -Done-jar.silent=true -Dorg.eclipse.jetty.server.LEVEL=WARN -jar lib/crg-scoreboard.jar"]
