# Mem-build image dengan nama karsajobs-ui
docker build -t karsajobs-ui:latest .

# Menambahkan tag ghcr.io/fakhrylinux/karsajobs-ui:latest
docker tag karsajobs-ui:latest ghcr.io/fakhrylinux/karsajobs-ui:latest

# Login ke Github Packages
echo $CR_PAT | docker login ghcr.io -u fakhrylinux --password-stdin

# Push image ke Github Packages
docker push ghcr.io/fakhrylinux/karsajobs-ui:latest