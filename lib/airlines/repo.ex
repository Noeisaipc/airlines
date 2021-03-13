defmodule Airlines.Repo do
  use Ecto.Repo,
    otp_app: :airlines,
    adapter: Ecto.Adapters.Postgres
end
