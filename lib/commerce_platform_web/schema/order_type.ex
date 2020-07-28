defmodule CommercePlatformWeb.Schema.Types.OrderType do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: CommercePlatform.Repo

  import_types(Absinthe.Type.Custom)

  object :order_type do
    field(:id, :id)
    field(:number, :string)
    field(:date_issued, :datetime)
    field(:delivery_date, :datetime)
    field(:paid, :boolean)
    field(:user, :user_type, resolve: assoc(:user))
    # field(:shipper, :shipper_type, resolve: assoc(:shipper))
  end

  input_object :order_input_type do
    field(:number, non_null(:string))
    field(:date_issued, non_null(:datetime))
    field(:delivery_date, :datetime)
    field(:paid, non_null(:boolean))
    field(:user_id, non_null(:id))
    # field(:shipper_id, :id)
  end
end
