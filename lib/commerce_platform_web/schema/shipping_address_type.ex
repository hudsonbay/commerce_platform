defmodule CommercePlatformWeb.Schema.Types.ShippingAddressType do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: CommercePlatform.Repo

  object :shipping_address_type do
    field :id, :id
    field :address, :string
    field :postal_code, :string
    field :phone, :string
    field :country, :country_type, resolve: assoc(:country)
    field :user, :user_type, resolve: assoc(:user)
  end
end
