defmodule Rocketpay.Account.Deposit do
  alias Rocketpay.Account.{Operation}
  alias Rocketpay.Repo

  def call(params) do
    params
    |>Operation.call(:deposit)
    |> run_transcation()
  end

  defp run_transcation(multi) do
    case Repo.transaction(multi) do
      {:error, _operation, reason, _changes} -> {:error, reason}
      {:ok, %{deposit: account}} -> {:ok, account}
    end
  end
end
