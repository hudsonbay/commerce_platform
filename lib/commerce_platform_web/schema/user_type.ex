defmodule CommercePlatformWeb.Schema.Types.UserType do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: CommercePlatform.Repo

  object :user_type do
    field(:id, :id)
    field(:first_name, :string)
    field(:last_name, :string)
    field(:email, :string)
    field(:role, :string)
    field(:phone, :string)
    field(:membership_type, :membership_type, resolve: assoc(:membership_type))

    field(:shipping_addresses, list_of(:shipping_address_type),
      resolve: assoc(:shipping_addresses)
    )
  end

  # TODO agregar los shipping addresses a los input
  input_object :user_input_type do
    field(:first_name, non_null(:string))
    field(:last_name, non_null(:string))
    field(:email, non_null(:string))
    field(:phone, :string)
    field(:password, non_null(:string))
    field(:password_confirmation, non_null(:string))
  end
end
