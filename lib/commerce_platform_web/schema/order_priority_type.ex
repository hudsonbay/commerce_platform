defmodule CommercePlatformWeb.Schema.Types.OrderPriorityType do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: CommercePlatform.Repo

  object :order_priority_type do
    field :id, :id
    field :name, :string
    field :description, :string
  end
end
