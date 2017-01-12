FROM mhart/alpine-node

ARG PROXY
ARG PG_HOST
ARG PG_PORT
ARG PG_DBNAME
ARG PG_USER
ARG PG_PWD

# Create app directory
WORKDIR /usr/src/app
ADD . .
RUN npm --proxy ${PROXY} install

EXPOSE 3000
