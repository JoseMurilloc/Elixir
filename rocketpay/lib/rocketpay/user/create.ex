defmodule Rocketpay.User.Create do
  alias Rocketpay.{Account, Repo, User}
  alias Ecto.Multi

  def call(params) do
    Multi.new()
    |> Multi.insert(:create_user, User.changeset(params))
    |> Multi.run(:create_account, fn repo, %{create_user: user} ->
      insert_account(repo, user.id)
    end)
    |> Multi.run(:preload_data, fn repo, %{create_user: user} ->
      preload_data(repo, user)
    end)
    |> run_transcation()
  end

  defp insert_account(repo, user_id) do
    user_id
    |> acchount_changeset()
    |> repo.insert()
  end

  defp preload_data(_repo, user) do
    {:ok, Repo.preload(user, :account)}
  end

  defp acchount_changeset(user_id) do
    %{user_id: user_id, balance: "0.00"}
    |> Account.changeset()
  end

  defp run_transcation(multi) do
    case Repo.transaction(multi) do
      {:error, _operation, reason, _changes} -> {:error, reason}
      {:ok, %{preload_data: user}} -> {:ok, user}
    end
  end
end
