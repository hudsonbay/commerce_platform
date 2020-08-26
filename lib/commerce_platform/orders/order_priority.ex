defmodule CommercePlatform.Orders.OrderPriority do
  use Ecto.Schema
  import Ecto.Changeset

  schema "order_priorities" do
    field :description, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(order_priority, attrs) do
    order_priority
    |> cast(attrs, [:name, :description])
    |> validate_required([:name, :description])
  end
end
