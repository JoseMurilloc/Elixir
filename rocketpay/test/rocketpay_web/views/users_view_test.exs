defmodule RocketpayWeb.UsersViewTest do
  use RocketpayWeb.ConnCase, async: true
  alias Rocketpay.{Account, User}
  alias RocketpayWeb.UsersView

  import Phoenix.View

  test "renders create.json" do
    params = %{
      name: "Murillo",
      password: "123456",
      nickname: "JoseMurilloc",
      email: "jooseemurillo@gmail.com",
      age: 22
    }

    {:ok, %User{id: user_id, account: %Account{id: account_id}} = user} = Rocketpay.create_user(params)

    response = render(UsersView, "create.json", user: user)

    expected_response = %{message: "User created", user: %{account: %{balance: Decimal.new("0.00"), id: account_id}, id: user_id, name: "Murillo", nickname: "JoseMurilloc"}}

    assert expected_response == response
  end
end
