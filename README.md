# Minimal build env for Android-related stuff

Provides `build-essential` and most needed tools, but might be incomplete for a
full Android build.

Build:
```
docker build -t dev-base:latest .
docker image tag dev-base:latest ghcr.io/ix5/dev-base:latest
docker image push ghcr.io/ix5/dev-base:latest
```
