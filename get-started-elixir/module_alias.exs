# Modulos usando alias para usarmos função em outros modulos
# basicamente como se fosse uma import do JS

defmodule MyApp.A do
  def funcao() do
    1 + 1
  end

  def funcao2 do
    2 + 2
  end
end

defmodule MyApp.B do
  alias MyApp.A

  def funcao3 do
    A.funcao() + A.funcao2()
  end
end

r = MyApp.B.funcao3()

IO.inspect r
