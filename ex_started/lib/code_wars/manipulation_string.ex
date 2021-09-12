defmodule CodeWars.ManipulationString do

  def solution(str, ending) do
    String.ends_with?(str, ending)
  end

  def call(string, end_string) do
    size_string = String.length(string)
      String.graphemes(string)
      |> List.to_tuple()
      |> elem(size_string - 1)
      |> check_end_string(end_string)
  end

  defp check_end_string(end_string_verify, end_string) do
    end_string === end_string_verify
  end
end
