defmodule SphinxWeb.SessionController do
  use SphinxWeb, :controller

  def create(conn, %{"name" => name}) do
    user = Sphinx.Users.get_user_by_name(name)
    if user do
      conn
      |> put_session(:user_id, user.id)
      |> put_flash(:info, "Welcome back #{user.name}")
      |> redirect(to: ~p"/quizzes")
    else
      conn
      |> put_flash(:error, "No such user.")
      |> redirect(to: ~p"/users/new")
    end
  end

  def delete(conn, _params) do
    conn
    |> delete_session(:user_id)
    |> put_flash(:info, "Logged out.")
    |> redirect(to: ~p"/")
  end
end
