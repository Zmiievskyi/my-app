FROM node:14
WORKDIR "/app"

# Install Git
RUN apt-get update && apt-get install -y git

WORKDIR "/app/my-app"
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]