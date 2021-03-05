defmodule ExStarted do
  @moduledoc """
    This module is a example to using patter match
  """
  def options(op) when is_binary(op) do
    cond do
      op === "sum" -> fn x, y -> x + y end
      op === "subtract" -> fn x, y -> x - y end
      true -> {:error, "Option Invalid only input 'sum' or 'suubtract'"}
    end
  end

  def options(_op) do
    {:error, "Type Invalid only type the string arg"}
  end

  def double_value(a), do: sum(a)
  defp sum(a), do: a+a

end
