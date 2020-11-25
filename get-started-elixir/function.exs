# Funções nomeadas como usar em elixir a forma publica e privada

defmodule Modulo do
  def minha_funcao_publica() do
    IO.puts 1 + minha_funcao_privada()
  end

  defp minha_funcao_privada() do
    1
  end

end

# Esse trecho da erro pois não poderemos acessa a função privada fora do seu modulo
# Modulo.minha_funcao_privada()
Modulo.minha_funcao_publica()

# Função anomimas

funcao = (fn x -> x * 30 end)

funcao2 = (fn func -> func.(10) end)

IO.puts funcao2.(funcao)