defmodule CodeWars.StringUtils do


  def alter_case_outhor_solution(str) do
    import String
    import Enum

    str
    |> codepoints
    |> map_join(&(if &1 == upcase(&1), do: downcase(&1), else: upcase(&1)))
  end

  def alter_case(str) do
    str
    |> String.codepoints()
    |> Enum.map_join(fn x -> toUpperOrLower(x) end)
  end

  defp toUpperOrLower(caractere) do
    cond do
      String.upcase(caractere) === caractere -> String.downcase(caractere)
      String.downcase(caractere) === caractere -> String.upcase(caractere)
      true -> caractere
    end
  end
end
