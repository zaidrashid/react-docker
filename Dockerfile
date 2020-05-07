# Use an existing docker image as a base
FROM node:alpine as builder
# set workdirectory
WORKDIR /app
# copy package.json first
COPY ./package.json ./ 
# download, install dependencies
RUN npm install
# then copy the rest
COPY ./ ./ 
#tell what to do when it starts
RUN npm run build

# does not need to mention stage
# as FROM is terminating the previous one
FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html
