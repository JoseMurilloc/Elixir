defmodule Books do
  @moduledoc """
  Documentation for `Books`.
  """

  def start do
    get_book()
    |> break_content()
  end

  defp get_book do
    IO.puts "Livros Elixirs"

    case HTTPoison.get("https://elixir-lang.org/learning.html") do
      {:ok, %HTTPoison.Response{body: body}} ->
        content = body
        |> Floki.find("a.cover")
        |> Floki.attribute("title")
        |> Floki.text(sep: "=>")
        |> String.split("=>")

      {:ok, content}
    end
  end

  defp break_content({_, content}) do
    Enum.map(content, fn s ->
      IO.puts "  #{s}"
      IO.puts "---------------------------"
    end)
  end
end
