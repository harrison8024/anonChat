# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :anonchat,
  ecto_repos: [Anonchat.Repo]

# Configures the endpoint
config :anonchat, Anonchat.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "owrB3GVF5WDG1yC+fXpp8j+g+XWVWQ9M6lXjc2k4+lfSTDuKrZ1dP85KRlTX9ILJ",
  render_errors: [view: Anonchat.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Anonchat.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
