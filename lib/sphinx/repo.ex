defmodule Sphinx.Repo do
  use Ecto.Repo,
    otp_app: :sphinx,
    adapter: Ecto.Adapters.SQLite3
end
