defmodule AirlinesWeb.PrivateRouter do
  use AirlinesWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  # Other scopes may use custom stacks.
  scope "/webhook", AirlinesWeb do
    pipe_through :api
    post "/notification", PageController, :notification
  end
end
