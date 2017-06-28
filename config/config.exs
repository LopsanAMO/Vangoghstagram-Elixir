# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :vangoghstagram,
  ecto_repos: [Vangoghstagram.Repo]

# Configures the endpoint
config :vangoghstagram, Vangoghstagram.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "t1lhn9D25PUlXYfqsaFCDxx2mbZZAquUWdUl/z55ULkpiOEaQKxiOTse0rvv170k",
  render_errors: [view: Vangoghstagram.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Vangoghstagram.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
