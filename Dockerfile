FROM mhart/alpine-node:6.1.0

ENV \
  GULP_VERSION=3.9.1 \
  TYPINGS_VERSION=0.8.1

RUN npm install -g \
  gulp@${GULP_VERSION} \
  typings@${TYPINGS_VERSION}

RUN find /usr/lib/node_modules -name test -o -name .bin -type d | xargs rm -rf
