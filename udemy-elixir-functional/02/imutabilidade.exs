total = 876

defmodule Mutante do
  @doc """
    Nesse contexto total não existe.
  """
  def mutar(valor) do
    valor = 1
    IO.puts("- O valor interno é #{valor}")
    valor
  end
end

Mutante.mutar(total)
IO.puts("Externo A - #{total}")


# Esta acontecendo uma reatribuição
total = Mutante.mutar(total)
IO.puts("Externo B - #{total}")