# Stage 1
FROM node:10-alpine as build-step
WORKDIR /usr/ripaliDirectory
COPY ./ ./
RUN npm install
CMD ["npm","start"]

# Stage 2
#FROM nginx:1.17.1-alpine
#COPY --from=build-step /app/docs /usr/share/nginx/html
