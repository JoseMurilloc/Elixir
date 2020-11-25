defmodule FriendApp do
  def hello do
    :world
  end

  def ambiente do
    case Mix.env() do
      :dev -> "Ambiente de desenvolvimento"
      :prod -> "Ambiente de produção"
      :test -> "Ambiente de testes"
    end
  end
end
