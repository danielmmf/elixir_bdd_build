use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phoenix_core, PhoenixCore.Endpoint,
  http: [port: 4001],
  server: false
 

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :phoenix_core, PhoenixCore.Repo,
  adapter: Sqlite.Ecto2,
  database: "db/dev.sqlite",
  pool: Ecto.Adapters.SQL.Sandbox  