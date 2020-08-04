defmodule CommercePlatform.World.Country do
  use Ecto.Schema
  import Ecto.Changeset

  schema "countries" do
    field :iso, :string
    field :iso3, :string
    field :iso_name, :string
    field :name, :string
    field :num_code, :string

    timestamps()
  end

  @doc false
  def changeset(country, attrs) do
    country
    |> cast(attrs, [:name, :iso, :iso3, :iso_name, :num_code])
    |> validate_required([:name, :iso, :iso3, :iso_name, :num_code])
  end
end
