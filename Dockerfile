FROM iamdejan/bionic-rust:latest
LABEL maintainer="Giovanni Dejan <giovanni.dejan@binus.ac.id>"

RUN mkdir -p /app
WORKDIR /app
COPY . .

RUN cargo build --workspace --verbose

CMD ["cargo", "run", "--verbose"]
