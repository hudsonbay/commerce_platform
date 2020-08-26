defmodule CommercePlatform.Orders.OrderDetail do
  use Ecto.Schema
  import Ecto.Changeset

  alias CommercePlatform.Stock.Product
  alias CommercePlatform.Orders.Order

  schema "order_details" do
    field :discount, :decimal
    field :unit_price, :decimal
    field :quantity, :integer, default: 1
    field :total, :decimal
    belongs_to(:product, Product)
    belongs_to(:order, Order)

    timestamps()
  end

  # TODO : implementar y validar el discount
  @doc false
  def changeset(order_detail, attrs) do
    order_detail
    |> cast(attrs, [:quantity, :price, :discount, :product_id, :order_id])
    |> validate_required([:quantity, :price, :discount, :product_id, :order_id])
    |> assoc_constraint(:order)
    |> quantity_update(attrs)
  end

  defp quantity_update(changeset, attrs) do
    changeset
    |> validate_number(:quantity, greater_than: 0)
    |> update_total_changeset(attrs)
  end

  defp update_total_changeset(changeset, attrs) when attrs == %{}, do: changeset

  defp update_total_changeset(changeset, _attrs) do
    quantity = get_field(changeset, :quantity) |> Decimal.new()
    unit_price = get_field(changeset, :unit_price)
    cost = Decimal.mult(quantity, unit_price)
    # always based on the current price
    put_change(changeset, :total, cost)
  end
end
