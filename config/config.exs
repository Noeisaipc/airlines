# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :airlines,
  ecto_repos: [Airlines.Repo]

# Configures the endpoint
config :airlines, AirlinesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "N9jgpUCNrV62U9cM++zgOT2YLxWlAjHB+XGARj+hyaoHxOGOYHevmV7b8uT/pheN",
  render_errors: [view: AirlinesWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Airlines.PubSub,
  live_view: [signing_salt: "V6PmaeNX"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
