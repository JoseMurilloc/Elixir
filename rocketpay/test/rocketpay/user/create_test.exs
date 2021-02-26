defmodule Rocketpay.User.CreateTest do
  use Rocketpay.DataCase, async: true

  alias Rocketpay.User
  alias Rocketpay.User.Create

  describe "call/1" do
    test "when all params is valid, returns an users" do
      params = %{
        name: "Murillo",
        password: "123456",
        nickname: "JoseMurilloc",
        email: "jooseemurillo@gmail.com",
        age: 22
      }

      {:ok, %User{id: user_id}} = Create.call(params)
      user = Repo.get(User, user_id)

      assert %User{name: "Murillo", age: 22, id: ^user_id} = user
    end

    test "when there are invalid params, returns an users" do
      params = %{
        name: "Murillo",
        nickname: "JoseMurilloc",
        email: "jooseemurillo@gmail.com",
        age: 22
      }

      {:error, changeset} = Create.call(params)

      expected_response = %{password: ["can't be blank"]}

      assert errors_on(changeset) == expected_response
    end
  end
end
