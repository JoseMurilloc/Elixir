defmodule Wabanex.Trainings.Create do
  alias Wabanex.Repo
  alias Wabanex.Schemas.Training

  def call(params) do
    params
    |> Training.changeset()
    |> Repo.insert()
  end
end
