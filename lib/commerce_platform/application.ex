defmodule CommercePlatform.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      CommercePlatform.Repo,
      # Start the Telemetry supervisor
      CommercePlatformWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: CommercePlatform.PubSub},
      # Start the Endpoint (http/https)
      CommercePlatformWeb.Endpoint
      # Start a worker by calling: CommercePlatform.Worker.start_link(arg)
      # {CommercePlatform.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: CommercePlatform.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    CommercePlatformWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
