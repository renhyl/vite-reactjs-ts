FROM node:18-alpine

# Set working directory
WORKDIR /app

# Update and install pnpm ref: https://pnpm.io/
RUN apk update && apk add --no-cache libc6-compat && npm install -g pnpm

# Configure pnpm path
ENV PNPM_HOME=/pnpm-test/.pnpm
ENV PATH=$PATH:$PNPM_HOME

# copies over current dir to the container
COPY . .

# exposes port of the container to outside (host)
EXPOSE 5173

# install aka node_modules
RUN pnpm i

# run Vite dev script with --host parameter
# (so host can access it, without it Vite HTTP server would only be accessible
# in the container)
CMD pnpm run dev --host