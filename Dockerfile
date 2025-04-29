FROM elixir:1.16-alpine

WORKDIR /app

COPY . . 

RUN mix deps.get

CMD ["mix", "run", "-e",  "Main.main"]
