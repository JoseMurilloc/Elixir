defmodule ExStarted do

  def list do
    [1, "Murilo", :false]
  end

  def tuple do
    {1, "Murillo", :false}
  end

  def show_index_tuple(tuple, index) do
    tuple
    |> elem(index)
  end
end
