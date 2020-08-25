defmodule CommercePlatform.Orders.Order do
  use Ecto.Schema
  import Ecto.Changeset

  alias CommercePlatform.Accounts.User
  alias CommercePlatform.Orders.{Shipper, OrderDetail, OrderStatus}

  schema "orders" do
    field :number, :string
    field :paid, :boolean, default: false
    field :delivery_date, :utc_datetime

    belongs_to(:user, User)
    belongs_to(:shipper, Shipper)
    has_many :order_details, OrderDetail
    belongs_to(:order_status, OrderStatus)

    # TODO add priority, default:normal
    # TODO generar un numero de order automatico siguiendo diferentes patrones
    # TODO validar que el delivery_date > date_issued
    # TODO Fix user relation
    timestamps(type: :utc_datetime)
  end

  @spec changeset(
          {map, map} | %{:__struct__ => atom | %{__changeset__: map}, optional(atom) => any},
          :invalid | %{optional(:__struct__) => none, optional(atom | binary) => any}
        ) :: Ecto.Changeset.t()
  @doc false
  def changeset(order, attrs) do
    order
    |> cast(attrs, [
      :number,
      :delivery_date,
      :paid,
      :user_id,
      :shipper_id,
      :order_status_id
    ])
    |> validate_required([:paid, :user_id, :order_status_id])
    |> foreign_key_constraint(:user)
    # Assign order_status "ON QUEUE" by default
    |> put_change(:order_status_id, 2)
    |> generate_number(attrs)
  end

  defp generate_number(changeset, attrs) when attrs == %{}, do: changeset

  defp generate_number(changeset, _attrs) do
    user_id = get_field(changeset, :user_id)

    issued =
      String.replace(NaiveDateTime.to_string(NaiveDateTime.utc_now()), [":", "-", ".", " "], "")

    generated_value = Enum.join(["MSBX", user_id, String.reverse(issued)])
    put_change(changeset, :number, generated_value)
  end

  # defp generate_number(changeset, _attrs) do
  #   quantity = get_field(changeset, :quantity) |> Decimal.new()
  #   unit_price = get_field(changeset, :unit_price)
  #   cost = Decimal.mult(quantity, unit_price)
  #   # always based on the current price
  #   put_change(changeset, :total, cost)
  # end
end
