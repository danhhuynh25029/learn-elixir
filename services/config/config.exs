# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :services,
  ecto_repos: [Services.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :services, ServicesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mz/y2Lv5hag93bIWznmOysc3sBk8BobKyFfbu+hIb+/A3FtjTi87b6cdu0EtlJ2o",
  render_errors: [view: ServicesWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Services.PubSub,
  live_view: [signing_salt: "Q60L8TOn"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
