# Build Image
docker build -t html-sameko -f docker/Dockerfile.prod .

# Run Container
docker container stop sameko-app
docker run --rm -d --name sameko-app -p 9000:80 html-sameko