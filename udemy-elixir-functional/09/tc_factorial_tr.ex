defmodule TCfactorial do
  @moduledoc"""
  Basicamente para evitar que as recurções consuma muito da nossa memoria e evitar perda performance usamos essa tecnica que evitar o necessidade de volta na recursão
  OBS: O contra dela e perda de visibilidade do codigo dependendo da situação
  """
  def of(n) do
     factorial_of(n, 1)
  end

  defp factorial_of(0, acc) do
    acc
  end

  defp factorial_of(n, acc) when n > 0 do
    factorial_of(n - 1, n * acc)
  end
end
