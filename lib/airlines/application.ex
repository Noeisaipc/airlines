defmodule Airlines.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Airlines.Repo,
      # Start the Telemetry supervisor
      #AirlinesWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Airlines.PubSub},
      # Start the Endpoint (http/https)
      AirlinesWeb.Endpoint,
      # Start the Endpoint
      AirlinesWeb.PrivateEndpoint
      # Start a worker by calling: Airlines.Worker.start_link(arg)
      # {Airlines.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Airlines.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    AirlinesWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
