# Mem-build image dengan nama karsajobs
docker build -t karsajobs:latest .

# Menambahkan tag untuk Github Packages
docker tag karsajobs:latest ghcr.io/fakhrylinux/karsajobs:latest

# Login ke Github Packages
echo $CR_PAT | docker login ghcr.io -u fakhrylinux --password-stdin

# Push image ke Github Packages
docker push ghcr.io/fakhrylinux/karsajobs:latest
