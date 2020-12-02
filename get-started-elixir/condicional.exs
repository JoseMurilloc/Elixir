a = {2, 2, 3}

# Case get a math with opitions
case a do
  {1, 2, b} ->
    IO.puts "O valor é #{b}"
  {2, 3, 4} ->
    IO.puts "Ola mundo"
  _ ->
    IO.puts "Deu hem nada"
end

IO.puts "Jogo de Adinvinha a palavra"
palavra = IO.gets "Digite a palavra: "
palavra = String.strip(palavra)

case palavra do
  "pão" ->
    IO.puts "É acertou!!!"
  "trigo" ->
    IO.puts "Quase, HEmmmmmmmmmmmm?"
  _ ->
    IO.puts "Nem perto"
end
