defmodule CommercePlatformWeb.Schema.Types.OrderType do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: CommercePlatform.Repo

  import_types(Absinthe.Type.Custom)

  object :order_type do
    field(:id, :id)
    field(:number, :string)
    field(:delivery_date, :datetime)
    field(:paid, :boolean)
    field(:user, :user_type, resolve: assoc(:user))
    field(:order_status, :order_status_type, resolve: assoc(:order_status))
    field(:order_priority, :order_priority_type, resolve: assoc(:order_priority))
    # field(:shipper, :shipper_type, resolve: assoc(:shipper))
  end

  input_object :order_input_type do
    field(:paid, non_null(:boolean))
    field(:user_id, non_null(:id))
  end
end
