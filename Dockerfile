FROM node:21.6.1-alpine

RUN apk update && apk upgrade

WORKDIR /nstu_abitur/

# Move source files and build the project
COPY ./express ./express
COPY ./svelte ./svelte
COPY ./build.sh ./
RUN sh build.sh

# Move everything to workdir and purge
RUN mv ./build/* ./ 
RUN rm -rf ./build ./express ./svelte build.sh

EXPOSE 5000

CMD node index.js
