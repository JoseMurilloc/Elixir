defmodule MyModule.SaySomething do
  @doc """
  Podemos usar o mesmo nome para funções diferenciando pelo numero
  de sua aridade (argumentos) 
  """
  def hello_world do
    "Hello world"
  end

  def hello_world(message) do
    message
  end
end