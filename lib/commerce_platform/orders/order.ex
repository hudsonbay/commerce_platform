defmodule CommercePlatform.Orders.Order do
  use Ecto.Schema
  import Ecto.Changeset

  schema "orders" do
    field :date_issued, :utc_datetime
    field :number, :string
    field :paid, :boolean, default: false
    field :required_date, :utc_datetime

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(order, attrs) do
    order
    |> cast(attrs, [:number, :date_issued, :required_date, :paid])
    |> validate_required([:number, :date_issued, :required_date, :paid])
  end
end
