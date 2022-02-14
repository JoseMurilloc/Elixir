defmodule Basic do
  @moduledoc """
    Basic elixir School of link:
    https://elixirschool.com/en/lessons/basics/basics
  """
  def all_types_primitivy do
    name = "Murillo"
    bool = true
    age = 23
    weight = 80.5

    %{
      string: name,
      bool: bool,
      atom: :true,
      number: age,
      float: weight
    }
  end

  def interpolation_string(name \\ "Murillo") do
    "Hello #{name}"
  end
end
