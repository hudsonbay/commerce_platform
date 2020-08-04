defmodule CommercePlatform.Orders.OrderDetail do
  use Ecto.Schema
  import Ecto.Changeset

  alias CommercePlatform.Stock.Product
  alias CommercePlatform.Orders.Order

  schema "order_details" do
    field :discount, :decimal
    field :price, :decimal
    field :quantity, :integer, default: 1
    field :total, :decimal
    belongs_to(:product, Product)
    belongs_to(:order, Order)

    timestamps()
  end

  @doc false
  def changeset(order_detail, attrs) do
    order_detail
    |> cast(attrs, [:quantity, :price, :discount, :product_id, :order_id])
    |> validate_required([:quantity, :price, :discount, :product_id, :order_id])
  end
end
