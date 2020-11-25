defmodule FriendApp.CLI.MenuItens do
  alias FriendApp.CLI.Menu

  def all, do: [
    %Menu{ label: "Cadastrar um amigo", id: :created },
    %Menu{ label: "Lista um amigo", id: :read },
    %Menu{ label: "Atualiza um amigo", id: :update },
    %Menu{ label: "Exclui um amigo", id: :delete }
  ]
end
