defmodule CommercePlatformWeb.Schema.Types.OrderStatusType do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: CommercePlatform.Repo

  object :order_status_type do
    field :id, :id
    field :name, :string
    field :description, :string
  end
end
