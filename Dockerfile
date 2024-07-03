FROM node:22

RUN mkdir app

WORKDIR /app

#COPY package*.json pnpm-lock.yaml ./

COPY . .

RUN npm install -g pnpm
RUN pnpm install --frozen-lockfile

EXPOSE 8080

CMD ["pnpm", "dev", "--port", "8080", "--host"]

