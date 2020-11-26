defmodule BankApiWeb.UserView do
  use BankApiWeb, :view


  def render("user.json", %{user: user}) do
    """
      Como iremos renderizar as informações, escolhendo os campos há ser mostrado
    """
    user
  end
end
