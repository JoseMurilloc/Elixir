defmodule Enum do
  @moduledoc """
  〽️ The Enum module includes over 70 functions for working with enumerables.
  Collections elixir School of link:
  https://elixirschool.com/en/lessons/basics/enum
  """

  @list ["foo", "bar", "hello"]

  def all_list() do
    Enum.all?(@list, fn(s) -> String.length(s) == 3 end)
  end

end
