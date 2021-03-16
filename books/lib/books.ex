defmodule Books do
  @moduledoc """
  Documentation for `Books`.
  """

  @url "https://elixir-lang.org/learning.html"

  def start do
    get_book()
    |> break_content()
  end

  defp get_book do
    IO.puts "Livros Elixirs"

    case HTTPoison.get(@url) do
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
