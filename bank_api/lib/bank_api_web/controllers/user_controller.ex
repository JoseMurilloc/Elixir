defmodule BankApiWeb.UserController do
  use BankApiWeb, :controller

  def index(conn, params) do
    conn
    |> json(params)
  end

  def signup(conn, %{"user" => user }) do
    conn
    |> put_status(:created)
    |> render("user.json", %{user: user})
  end
end
