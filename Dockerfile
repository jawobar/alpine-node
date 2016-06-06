FROM mhart/alpine-node:6.2.1

ENV \
  GULP_VERSION=3.9.1 \
  TYPINGS_VERSION=1.0.4

RUN npm install -g \
  gulp@${GULP_VERSION} \
  typings@${TYPINGS_VERSION}

RUN find /usr/lib/node_modules -name test -o -name .bin -type d | xargs rm -rf
