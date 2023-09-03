defmodule SphinxWeb.Plugs.RequireUser do
  import Plug.Conn
  use SphinxWeb, :controller

  def init(args), do: args

  def call(conn, _params) do
    if conn.assigns[:current_user] do
      conn
    else
      conn
      |> put_flash(:error, "Please log in.")
      |> redirect(to: ~p"/")
      |> halt
    end
  end
end
