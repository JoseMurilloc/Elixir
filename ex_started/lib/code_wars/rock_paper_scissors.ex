defmodule RockPaperScissors do

  def rps_best_solution(p, p), do: "Draw!"

  def rps_best_solution(p1, p2)
    when p1 == "scissors" and p2 == "paper"
    when p1 == "paper" and p2 == "rock"
    when p1 == "rock" and p2 == "scissors",
    do: "Player 1 won!"

  def rps_best_solution(_, _), do: "Player 2 won!"

  def rps(p1, p2), do: if p1 === p2, do: "Draw!", else: caseWins(p1, p2)

  defp caseWins(p1, p2) do
    cond do
      p1 === "rock" -> rock_win?(p2)
      p1 === "scissors" -> scissors_win?(p2)
      p1 === "paper" -> paper_win?(p2)
    end
  end

  defp rock_win?(p2) do
    case p2 do
      "scissors" -> "Player 1 won!"
      "paper" -> "Player 2 won!"
    end
  end

  defp scissors_win?(p2) do
    case p2 do
      "paper" -> "Player 1 won!"
      "rock" -> "Player 2 won!"
    end
  end

  defp paper_win?(p2) do
    case p2 do
      "rock" -> "Player 1 won!"
      "scissors" -> "Player 2 won!"
    end
  end
end
