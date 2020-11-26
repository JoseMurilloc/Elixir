array = [1,2,3]

for x <- array do
  x + 2
end

lista_carrinho = [
  %{valor_unitario: 125, quantidade: 2, valor_total: 250},
  %{valor_unitario: 9210, quantidade: 1, valor_total: 9210},
  %{valor_unitario: 1000, quantidade: 20, valor_total: 20000}
]

valor_total = Enum.reduce(lista_carrinho, 0, fn item, valor_a_somar ->
  valor_a_somar + item.valor_total
end)

IO.puts valor_total


# Dentro desse maravilhoso módulo, podemos realizar inúmeras operações tanto com listas,
# tanto com estruturas (Structs).  Um exemplo legal é quando você precisa iterar dentro
# de uma struct para alterar as chaves de String para Átomo:


estrutura = %{"id" => 123, "nome" => "aleDsz"}

IO.inspect estrutura |> Enum.map(fn { chave, valor } ->
  {String.to_atom(chave), valor}
end) |> Enum.into(%{})


IO.inspect estrutura
