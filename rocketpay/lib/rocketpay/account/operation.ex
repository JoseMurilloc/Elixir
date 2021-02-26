defmodule Rocketpay.Account.Operation do
  alias Ecto.Multi
  alias Rocketpay.{Account}

  def call(%{"id" => id, "value" => value}, operation) do
    operation_name = account_operation_name(operation)
    Multi.new()
    |> Multi.run(operation_name, fn repo, _changes ->
      get_account(repo, id)
    end)
    |> Multi.run(operation, fn repo, changes ->
      account = Map.get(changes, operation_name)
      update_balance(repo, account, value, operation)
    end)
  end

  defp get_account(repo, id) do
    case repo.get(Account, id) do
      nil -> {:error, " found"}
      account -> {:ok, account}
    end
  end

  defp update_balance(repo, account, value, operation) do
    account
    |> operations_value(value, operation)
    |> update_account(repo, account)
  end

  defp update_account({:error, _reason} = error, _repo, _account), do: error
  defp update_account(value, repo, account) do
    params = %{balance: value}

    account
    |> Account.changeset(params)
    |> repo.update()
  end

  def operations_value(%Account{ balance: balence}, value, operation) do
    value
    |> Decimal.cast()
    |> handle_cast(balence, operation)
  end

  defp handle_cast({:ok, value}, balence, :deposit), do: Decimal.add(balence, value)
  defp handle_cast({:ok, value}, balence, :withdraw), do: Decimal.sub(balence, value)

  defp handle_cast(:error, _balence, _operation) do
    {:error, "Invalid deposit value!"}
  end

  defp account_operation_name(operation) do
    "account_#{Atom.to_string(operation)}" |> String.to_atom()
  end
end
