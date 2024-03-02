FROM --platform=linux/arm64 node:21.6.1-alpine

RUN apk update && apk upgrade

WORKDIR /nstu_abitur/

# Move source files and build the project
COPY ./express /nstu_abitur/express
COPY ./svelte /nstu_abitur/svelte
ADD ./build.sh /nstu_abitur/

# RUN cd ./svelte && ls -d */ && sleep 5

RUN sh /nstu_abitur/build.sh

# Remove everything excess
RUN rm -rf /nstu_abitur/express /nstu_abitur/svelte
RUN rm -f /nstu_abitur/build.sh

# Move build to root and purge
RUN mv ./build/* ./ 
RUN rm -rf /nstu_abitur/build

CMD node index.js
