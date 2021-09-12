defmodule CodeWars.SquareSum do
  def square_sum_best_solution(nums) do
    nums
    |> Enum.map(&(&1 * &1))
    |> Enum.sum
  end

  def square_sum(nums) do
    nums
    |> Enum.map(fn x -> x*x end)
    |> Enum.reduce(0, fn x, acc -> x + acc end)
  end
end
