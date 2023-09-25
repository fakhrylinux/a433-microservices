# Mem-build image dengan nama order-service dan tag v1
docker build -t order-service:v1 .

# Menambahkan tag ghcr.io/fakhrylinux/order-service:v1
docker tag order-service:v1 ghcr.io/fakhrylinux/order-service:v1

# Login ke Github Packages
echo $CR_PAT | docker login ghcr.io -u fakhrylinux --password-stdin

# Push image ke Github Packages
docker push ghcr.io/fakhrylinux/order-service:v1
