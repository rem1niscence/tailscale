echo "running build script..."
eval "$(./build_dist.sh shellvars)"
echo "building Tailscale ${VERSION_SHORT}..."

docker buildx build --platform linux/amd64,linux/arm64 \
  -f Dockerfile \
  --build-arg VERSION_LONG="${VERSION_SHORT}" \
  --build-arg VERSION_SHORT="${VERSION_SHORT}" \
  --build-arg VERSION_GIT_HASH="${VERSION_GIT_HASH}" \
  -t $REPOSITORY/tailscale:${VERSION_SHORT} \
  -t $REPOSITORY/tailscale:latest \
  . --push
