# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_core,
  ecto_repos: [PhoenixCore.Repo]

# Configures the endpoint
config :phoenix_core, PhoenixCore.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OxHzKBhAaY9kcSPx8/CWBoVRGIreO3e/VBdnawbDJ6be9WCx/+mz16ab4rMKFbz1",
  render_errors: [view: PhoenixCore.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixCore.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
