# Mendownload image node dengan tag 14-alpine
FROM node:14-alpine

# Membuat working directory "app"
WORKDIR /app

# Menyalin seluruh source code ke working direktory "app"
COPY . .

# Menentukan nilai environment NODE_ENV dan DB_HOST
ENV NODE_ENV=production DB_HOST=item-db

# Menginstall dependensi untuk production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Expose port 8080 untuk bisa diakses
EXPOSE 8080

# Menjalankan aplikasi
CMD [ "npm", "start" ]