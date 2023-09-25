# Mendownload image node dengan tag 16.20.2-alpine
FROM node:16.20.2-alpine

# Membuat working directory "/app"
WORKDIR /app

# Menyalin file package.json dan package-lock.json ke working directory /app
COPY package*.json ./

# Menginstall dependensi dengan cara clean install.
# Ini akan menginstall dengan versi yang ada di package-lock.json
RUN npm ci

# Menyalin seluruh source code ke working direktory "app"
COPY . .

# Expose port 3000 supaya bisa diakses
EXPOSE 3000

# Menjalankan service
CMD [ "npm", "run", "start" ]
