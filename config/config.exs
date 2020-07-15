# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :commerce_platform,
  ecto_repos: [CommercePlatform.Repo]

# Configures the endpoint
config :commerce_platform, CommercePlatformWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "cUJSXz5mio+QPx62PaNJP8KeCiYA+NTmpl+Tnkgpv2F+FDRkvD1V03nXYoCD+Vd5",
  render_errors: [view: CommercePlatformWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: CommercePlatform.PubSub,
  live_view: [signing_salt: "BddGmO8C"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
