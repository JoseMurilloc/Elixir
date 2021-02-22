defmodule Friends.Application do

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      Friends.Repo
    ]

    opts = [strategy: :one_for_one, name: Friends.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
