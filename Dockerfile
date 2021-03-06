FROM elixir:latest

COPY bin/ ./

RUN chmod +x ./main.exs \
    && elixirc ./main.exs

CMD ["elixir", "-e", "Greeting.hello"]
