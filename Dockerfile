FROM node:22-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --omit=dev
COPY . .
RUN npx prisma generate
ENV NODE_ENV=production
ENV DATABASE_URL=file:/app/storage/nexus.db
ENV NEXUS_UPLOAD_DIR=/app/storage/uploads
RUN mkdir -p /app/storage/uploads
EXPOSE 5231
CMD ["sh","-c","npx prisma db push --skip-generate && node server/index.js"]
