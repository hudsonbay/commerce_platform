defmodule CommercePlatform.World.Country do
  use Ecto.Schema
  import Ecto.Changeset

  alias CommercePlatform.World.State

  schema "countries" do
    field :iso, :string
    field :iso3, :string
    field :iso_name, :string
    field :name, :string
    field :num_code, :string
    field :has_states, :boolean, default: false

    has_many :states, State

    timestamps()
  end

  @doc false
  def changeset(country, attrs) do
    country
    |> cast(attrs, [:name, :iso, :iso3, :iso_name, :num_code, :has_states])
    |> validate_required([:name, :iso, :iso3, :iso_name, :num_code, :has_states])
    |> validate_length(:iso, is: 2)
    |> validate_length(:iso3, is: 3)
    |> unique_constraint(:iso)
    |> unique_constraint(:iso3)
    |> unique_constraint(:name)
    |> unique_constraint(:numcode)
    |> build_iso_name
  end

  defp build_iso_name(%{valid?: false} = changeset), do: changeset

  defp build_iso_name(changeset) do
    name = get_change(changeset, :name)

    if name do
      put_change(changeset, :iso_name, String.upcase(name))
    else
      changeset
    end
  end
end
