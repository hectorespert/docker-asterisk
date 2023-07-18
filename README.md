# Asterisk Docker Image

Asterisk docker image preconfigured for [testcontainers-spring-boot-asterisk](https://github.com/hectorespert/testcontainers-spring-boot-asterisk)

## Development

### Build

```bash
docker build . --file Dockerfile --tag blackleg/asterisk --progress=plain
```

### Run

```bash
docker run -it --rm -p 5038:5038 -p 8088:8088 blackleg/asterisk
```
