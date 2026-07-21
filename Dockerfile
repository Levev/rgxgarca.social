FROM oven/bun:latest AS build
WORKDIR /
RUN bun install --frozen-lockfile
RUN bun run build

FROM nginx:alpine
COPY --from=build /dist /usr/share/nginx/html