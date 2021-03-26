FROM node:14.14.0-alpine
WORKDIR "/app"
COPY package.json ./
RUN npm install
COPY ../../complex-k8s/server .
CMD ["npm", "run", "start"]
