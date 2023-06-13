defmodule Erp.Repo do
  use Ecto.Repo,
    otp_app: :erp,
    adapter: Ecto.Adapters.Postgres
    
  # The `Erp.Repo` module is defined to handle database operations using Ecto.
  # It uses the Ecto.Repo module and configures it to work with the `:erp` OTP application
  # and the PostgreSQL database adapter.

  def init(_, config) do
    config = config
      |> Keyword.put(:username, "postgres")
      |> Keyword.put(:password, "postgres")
      |> Keyword.put(:database, "postgres")
      |> Keyword.put(:hostname, "db")
      |> Keyword.put(:port, 5432)
    {:ok, config}
  end
end
