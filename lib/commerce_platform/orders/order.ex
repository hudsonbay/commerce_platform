defmodule CommercePlatform.Orders.Order do
  use Ecto.Schema
  import Ecto.Changeset

  alias CommercePlatform.Accounts.User
  alias CommercePlatform.Orders.{Shipper, OrderDetail, OrderStatus, OrderPriority}

  schema "orders" do
    field :number, :string
    field :paid, :boolean, default: false
    field :delivery_date, :utc_datetime

    belongs_to(:user, User)
    belongs_to(:shipper, Shipper)
    has_many :order_details, OrderDetail
    belongs_to(:order_status, OrderStatus)
    belongs_to(:order_priority, OrderPriority)

    # TODO add priority, default:normal
    # TODO validar que el delivery_date > date_issued
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
      :order_status_id,
      :order_priority_id
    ])
    |> validate_required([:paid, :user_id])
    |> foreign_key_constraint(:user)
    |> foreign_key_constraint(:order_status)
    |> foreign_key_constraint(:order_priority)
    # Assign order_status "ON QUEUE" by default
    |> put_change(:order_status_id, 2)
    |> add_priority()
    |> generate_number(attrs)
  end

  defp add_priority(changeset) do
    # validate type of priority of some client. In the meanwhile the priority will be NORMAL
    put_change(changeset, :order_priority_id, 2)
  end

  defp generate_number(changeset, attrs) when attrs == %{}, do: changeset

  defp generate_number(changeset, _attrs) do
    user_id =
      changeset
      |> get_field(:user_id)

    issued =
      NaiveDateTime.utc_now()
      |> NaiveDateTime.to_string()
      |> String.replace([":", "-", ".", " "], "")

    generated_value = Enum.join(["MSBX", user_id, String.reverse(issued)])

    changeset
    |> put_change(:number, generated_value)
  end
end
