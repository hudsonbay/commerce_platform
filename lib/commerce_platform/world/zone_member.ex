defmodule CommercePlatform.World.ZoneMember do
  use Ecto.Schema
  import Ecto.Changeset

  alias CommercePlatform.World.Zone

  schema "abstract table:zone_members" do
    field :zoneable_id, :integer
    belongs_to :zone, Zone

    timestamps()
  end

  @doc false
  def changeset(zone_member, attrs) do
    zone_member
    |> cast(attrs, [:zoneable_id, :zone_id])
    |> validate_required([:zoneable_id, :zone_id])
  end
end
