defmodule CommercePlatform.World.State do
  use Ecto.Schema
  import Ecto.Changeset

  alias CommercePlatform.World.{Country, ZoneMember}

  schema "states" do
    field :abbr, :string
    field :name, :string
    belongs_to :country, Country

    has_many(:zone_members, {"state_zone_members", ZoneMember}, foreign_key: :zoneable_id)
    has_many(:zones, through: [:zone_members, :zone])

    timestamps()
  end

  @doc false
  def changeset(state, attrs) do
    state
    |> cast(attrs, [:abbr, :name, :country_id])
    |> validate_required([:abbr, :name, :country_id])
    |> foreign_key_constraint(:country_id)
  end
end
