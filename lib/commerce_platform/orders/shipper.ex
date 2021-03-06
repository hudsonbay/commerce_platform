defmodule CommercePlatform.Orders.Shipper do
  use Ecto.Schema
  import Ecto.Changeset

  alias CommercePlatform.World.Country

  schema "shippers" do
    field :company_name, :string
    field :description, :string
    field :email, :string
    field :phone, :string
    field :picture, :string
    field :website, :string
    belongs_to(:country, Country)

    timestamps()
  end

  @doc false
  def changeset(shipper, attrs) do
    shipper
    |> cast(attrs, [:company_name, :description, :phone, :email, :website, :picture, :country_id])
    |> validate_required([:company_name, :description, :phone, :email, :country_id])
  end
end
