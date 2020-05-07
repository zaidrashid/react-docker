# Use an existing docker image as a base
FROM node:alpine

# set workdirectory
WORKDIR /app
# copy package.json first
COPY ./package.json ./ 
# download, install dependencies
RUN npm install
# then copy the rest
COPY ./ ./ 

#tell what to do when it starts
CMD [ "npm", "start" ]
