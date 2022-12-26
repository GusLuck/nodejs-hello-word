FROM node
# Create work directory that will contain source code and other details
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install
# Bundle application source code
COPY . .
EXPOSE 8000
CMD [ "node" "index.js" ]