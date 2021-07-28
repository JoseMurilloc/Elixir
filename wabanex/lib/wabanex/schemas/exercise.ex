defmodule Wabanex.Schemas.Exercise do
  use Ecto.Schema
  import Ecto.Changeset

  alias Wabanex.Schemas.Training

  @fields [:name, :protocol_description, :repetitions, :youtube_video_url]
  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  schema "exercises" do
    field :name, :string
    field :protocol_description, :string
    field :repetitions, :string
    field :youtube_video_url, :string

    belongs_to :training, Training
  end

  def changeset(exercises, params) do
    exercises
    |> cast(params, @fields)
    |> validate_required(@fields)
  end
end
