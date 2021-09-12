defmodule CodeWars.SumMix do
  def sumMin(list) do
    list
    |> Enum.map(fn x -> convert_type(x) end)
    |> Enum.reduce(0, fn x, acc -> x + acc end)
  end

  defp convert_type(item) when is_binary(item) do
    {value, _} = Integer.parse(item)
    value
  end
  defp convert_type(item), do: item
end
