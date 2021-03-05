defmodule Api.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Api.Accounts.User


  @requied_params [:email, :password, :password_confirmation]

  schema "users" do
    field :email, :string
    field :password_hash, :string

    # Virtual fields
    field :password, :string, virtual: true
    field :password_confirmation, :string, virtual: true

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, @requied_params)
    |> validate_required(@requied_params)
    |> validate_format(:email, ~r/@/)
    |> validate_length(:password, min: 8)
    |> validate_confirmation(:password)
    |> unique_constraint(:email)
    |> put_password()
  end


  defp put_password(changeset) do
    case changeset do
      %Ecto.Changeset{valid?: true, changes: %{password: pass}} ->
        put_change(changeset, :password_hash, Bcrypt.hash_pwd_salt(pass))
      _ ->
        changeset
    end
  end
end
