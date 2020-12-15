defmodule FriendApp.DB.CSV do
  alias Mix.Shell.IO, as: Shell
  alias FriendApp.CLI.Menu
  # alias FriendApp.CLI.Friend
  alias NimbleCSV.RFC4180, as: CSVParser

  def perform(choice_menu_item) do
    case choice_menu_item do
      %Menu{ label: _, id: :created} -> create()
      %Menu{ label: _, id: :read} -> Shell.info ">>> Read <<<"
      %Menu{ label: _, id: :update} -> Shell.info ">>> Update <<<"
      %Menu{ label: _, id: :delete} -> Shell.info ">>> Delete <<<"
    end

    FriendApp.CLI.Menu.Choices.start()
  end

  defp create() do
    collect_data()
    |> Map.values()
    |> wrap_in_list()
    |> CSVParser.dump_to_iodata()
    |> save_csv_file()
  end

  defp collect_data do
    Shell.cmd("clear")

    %{
      name: prompt_message("Digite seu nome"),
      email: prompt_message("Digite seu email"),
      phone: prompt_message("Digite seu telefone")
    }

  end

  defp prompt_message(message) do
    message
    |> Shell.prompt()
    |> String.trim()
  end

  defp wrap_in_list(list) do
    [list]
  end

  defp save_csv_file(data) do
    File.write!("#{File.cwd!}/friends.csv", data, [:append])
  end
end
