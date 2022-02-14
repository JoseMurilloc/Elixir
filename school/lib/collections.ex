defmodule Collections do
  @moduledoc """
    Collections elixir School of link:
    https://elixirschool.com/en/lessons/basics/collections
  """

  @list [3.14, :pie, "Apple"]
  @map %{foo: "bar", hello: "world"}

  def updated_map(value), do:  %{@map | foo: value}
  def add_in_map(value), do: Map.put(@map, :new_value, value)

  def prepending, do: ["some" | @list]
  def appending, do: @list ++ ["Cherry"]
  def concatenation, do: [1, 2] ++ [3, 4, 1]
  def subtraction, do: ["foo", :bar, 42] -- [42, "bar"]

  def hd_list, do: hd @list
  def tl_list, do: tl @list

end
