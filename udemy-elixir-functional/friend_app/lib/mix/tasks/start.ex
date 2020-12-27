defmodule Mix.Tasks.Start do
  use Mix.Task

  @shortdoc "Start [Friend App]"
  def run(_), do: FriendApp.init()
end
