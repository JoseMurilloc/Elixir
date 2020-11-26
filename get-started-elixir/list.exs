# Percorrer o array e multiplicar por 2 cada um da posição
listMultTwo = Enum.map([1, 2, 3], fn x -> x * 2 end)

# Somando as posições
IO.inspect Enum.sum([1,2,3])

IO.inspect listMultTwo


# Função anômina
funcao = (fn -> idade = 20 end)

newIdade = funcao.()

IO.puts newIdade
