defmodule CommercePlatform.Orders.OrderState do
  use Ecto.Schema
  import Ecto.Changeset

  alias CommercePlatform.Orders.Order

  schema "order_state" do
    field :description, :string
    field :name, :string

    has_many :orders, Order

    timestamps()
  end

  @doc false
  def changeset(order_state, attrs) do
    order_state
    |> cast(attrs, [:name, :description])
    |> validate_required([:name, :description])
  end
end
