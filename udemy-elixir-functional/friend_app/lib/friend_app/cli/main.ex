defmodule FriendApp.CLI.Main do
  alias Mix.Shell.IO, as: Shell

  def start_app do
    Shell.cmd("clear")
    welcome_message()
    Shell.prompt("Pressione ENTER para continuar...")
    start_menu_choices()
  end

  defp welcome_message do
    Shell.info("============== FRIEND APP ==============")
    Shell.info("Seja bem vindo á nossa agenda pessoal")
    Shell.info("============== FRIEND APP ==============")
  end

  defp start_menu_choices, do: FriendApp.CLI.MenuChoices.start()


end
