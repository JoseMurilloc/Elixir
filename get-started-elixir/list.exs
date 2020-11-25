# Percorrer o array e multiplicar por 2 cada um da posição
Enum.map([1, 2, 3], fn x -> x * 2 end)

# Somando as posições
Enum.sum([1,2,3])


# Função anômina
funcao = (fn -> idade = 20 end)

newIdade = funcao.()

IO.puts newIdade
