FROM google/nodejs

WORKDIR /app
ADD package.json /app/
RUN npm install
RUN mkdir bin lib web
ADD bin /app/bin/
ADD lib /app/lib/
ADD web /app/web/

ENTRYPOINT ["node", "bin/redis-commander.js"]
