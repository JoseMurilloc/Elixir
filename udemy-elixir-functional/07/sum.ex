defmodule Sum do
  @doc """
    Fatorial de forma recursiva
  """
  def to(1) do
    1
  end

  def to(n) when n > 0 and is_integer(n) do
    n * to(n-1)
  end
end