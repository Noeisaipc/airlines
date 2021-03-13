defmodule AirlinesWeb.PageController do
  use AirlinesWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def notification(conn, _params) do
    conn
    |> put_status(200)
    |> json(%{message: "response only from port 5000"})
  end
end
