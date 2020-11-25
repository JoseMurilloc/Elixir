defmodule ComparaNumero do
  @doc """
    Basicamente para não usar um if na hora de realizar uma comparação
    podemos usar o Parttern matching para verificar com qual função ele
    esta "casando"

    Forma de controlar o fluxo
  """

  def maior(n1, n2) do
    check(n1 >= n2, n1, n2)
  end

  defp check(true, n1, _), do: n1
  defp check(false, _, n2), do: n2
end
