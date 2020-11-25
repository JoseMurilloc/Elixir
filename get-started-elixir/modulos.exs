defmodule MyApp.A do
  def funcao() do
    1 + 1
  end

  def funcao2() do
    1 + 1
  end

  def funcao3() do
    1 + 1
  end

  def funcao4(a, b, c, d \\ 0) do
    1 + 1
  end
end

defmodule MyApp.B do
  import MyApp.A
  import MyApp.A, only: [funcao1: 0, funcao2: 0]

  def funcao3() do
    funcao() + funcao2() # 4
  end
end
