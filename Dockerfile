FROM rust:1.42.0-alpine
LABEL maintainer="Giovanni Dejan <giovanni.dejan@binus.ac.id>"

RUN mkdir -p /app
WORKDIR /app
COPY . .

RUN cargo build --workspace --verbose

CMD ["cargo", "run", "--verboose"]
