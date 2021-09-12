defmodule FakeBinary do

  def generate_best_solution(str) do
    str
    |> String.split("", trim: true)
    |> Enum.map(fn el ->
       if String.to_integer(el) < 5, do: "0", else: "1"
    end)
    |> List.to_string()
  end

  def generate(str) do
    str
    |> String.codepoints()
    |> Enum.map_join(fn elem -> verify(elem) end)
  end

  defp verify(elem) do
    {value, _} = Integer.parse(elem)
    value
    |> isBigge()
  end

  defp isBigge(is), do: if is >= 5, do: "1", else: "0"
end
