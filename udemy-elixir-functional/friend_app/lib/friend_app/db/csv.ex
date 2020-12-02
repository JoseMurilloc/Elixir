defmodule FriendApp.DB.CSV do
  alias Mix.Shell.IO, as: Shell
  alias FriendApp.CLI.Menu

  def perform(choice_menu_item) do
    case choice_menu_item do
      %Menu{ label: _, id: :created} -> Shell.info ">>> Create <<<"
      %Menu{ label: _, id: :read} -> Shell.info ">>> Read <<<"
      %Menu{ label: _, id: :update} -> Shell.info ">>> Update <<<"
      %Menu{ label: _, id: :delete} -> Shell.info ">>> Delete <<<"
    end
  end
end
