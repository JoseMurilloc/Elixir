defmodule Wabanex.IMC do
  def calculate(%{"filename" => filename}) do
    filename
    |> File.read
    |> handle_file()
  end

  defp handle_file({:ok, content}) do
    data =
      content
      |> String.split("\n")
      |> Enum.map(fn line -> parser_line(line) end)
      |> Enum.into(%{})

    {:ok, data}
  end

  defp handle_file({:error, _reason}) do
    {:error, "Error while opening the file"}
  end


  defp parser_line(line) do
    line
    |> String.split(",")
    |> List.update_at(1, fn value -> String.to_float(value) end)
    |> List.update_at(2, fn value -> String.to_float(value) end)
    |> calculate_imc()
  end

  defp calculate_imc([name, height, weight]), do:
    {name, weight / (height * height)}

end
