defmodule CommercePlatform.Orders.Order do
  use Ecto.Schema
  import Ecto.Changeset

  alias CommercePlatform.Accounts.User
  alias CommercePlatform.Orders.{Shipper, OrderDetail, OrderStatus}

  schema "orders" do
    field :date_issued, :utc_datetime
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
      :date_issued,
      :delivery_date,
      :paid,
      :user_id,
      :shipper_id,
      :order_status_id
    ])
    |> validate_required([:number, :date_issued, :paid, :user_id, :order_status_id])
    |> foreign_key_constraint(:user)
  end
end
