FROM oven/bun:latest AS build
WORKDIR /app
COPY . .
RUN bun install --frozen-lockfile 
RUN bun run build

FROM nginx:alpine
COPY --from=build /app/dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.cond