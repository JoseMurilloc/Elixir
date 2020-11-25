# Import modulos com elixir, basicamente usamos para poder
# usar as funções do outro modulo importado como se estevesse
# no modulo presente

defmodule MyApp.A do
  def funcao() do
    1 + 1
  end

  def funcao2() do
    1 + 1
  end
end

defmodule MyApp.B do
  import MyApp.A, only: [funcao: 0, funcao2: 0]

  def funcao3() do
    funcao() + funcao2() # 4
  end
end
