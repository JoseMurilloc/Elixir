defmodule CodeWars.Solution do

  def repeat_str_best_solution(n, s), do: String.duplicate(s, n)

  def repeat_str(n, s) when n <= 1, do: s
  def repeat_str(n, s), do: s <> repeat_str(n - 1, s)
end
