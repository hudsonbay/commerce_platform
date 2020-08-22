defmodule CommercePlatform.Accounts.ShippingAddress do
  use Ecto.Schema
  import Ecto.Changeset

  alias CommercePlatform.Accounts.User
  alias CommercePlatform.World.Country

  schema "shipping_addresses" do
    field :address, :string
    field :postal_code, :string
    field :phone, :string
    belongs_to(:user, User)
    belongs_to(:country, Country)

    # TODO decidir como asignar a un usuario una direccion por default

    timestamps()
  end

  @doc false
  def changeset(shipping_address, attrs) do
    shipping_address
    |> cast(attrs, [:address, :postal_code, :phone, :user_id, :country_id])
    |> validate_required([:address, :postal_code, :user_id, :country_id])
  end
end
