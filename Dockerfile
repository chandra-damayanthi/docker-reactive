# Build Phase

FROM node:20-alpine3.16 as builder

WORKDIR '/app'

COPY package-lock.json package-lock.json 
COPY package.json package.json
RUN npm install
COPY . .
RUN npm run build


FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html





