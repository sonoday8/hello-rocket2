FROM rust:1.59.0

ENV ROCKET_ADDRESS=0.0.0.0
#ENV ROCKET_PORT=6666

WORKDIR /app
COPY . .

RUN rustup default stable
RUN cargo install cargo-watch
RUN cargo build

CMD ["cargo", "watch", "-x", "run"]
