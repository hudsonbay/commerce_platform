defmodule CommercePlatformWeb.Schema.Types.UserType do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: CommercePlatform.Repo
  alias CommercePlatformWeb.Resolvers

  object :user_type do
    field(:id, :id)
    field(:first_name, :string)
    field(:last_name, :string)
    field(:email, :string)
    field(:role, :string)
    field(:phone, :string)
    field(:membership_type, :membership_type, resolve: assoc(:membership_type))

    # TODO: fix the shipping address argument because I need it dinamically and it's expecting a argument manually typed
    field :shipping_address, list_of(:shipping_address_type) do
      arg(:id, non_null(:id))
      resolve(&Resolvers.UserResolver.list_shipping_addresses_by_user/3)
    end
  end

  input_object :user_input_type do
    field(:first_name, non_null(:string))
    field(:last_name, non_null(:string))
    field(:email, non_null(:string))
    field(:phone, :string)
    field(:password, non_null(:string))
    field(:password_confirmation, non_null(:string))
  end
end
