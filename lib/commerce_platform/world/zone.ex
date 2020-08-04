defmodule CommercePlatform.World.Zone do
  use Ecto.Schema
  import Ecto.Changeset

  schema "zones" do
    field :description, :string
    field :name, :string
    field :type, :string

    timestamps()
  end

  @doc false
  def changeset(zone, attrs) do
    zone
    |> cast(attrs, [:name, :description, :type])
    |> validate_required([:name, :description, :type])
  end
end
