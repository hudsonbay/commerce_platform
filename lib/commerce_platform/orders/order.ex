defmodule CommercePlatform.Orders.Order do
  use Ecto.Schema
  import Ecto.Changeset

  alias CommercePlatform.Accounts.User
  alias CommercePlatform.Orders.Shipper

  schema "orders" do
    field :date_issued, :utc_datetime
    field :number, :string
    field :paid, :boolean, default: false
    field :delivery_date, :utc_datetime
    belongs_to(:user, User)
    belongs_to(:shipper, Shipper)

    # TODO add state, default:unpaid
    # TODO add priority, default:normal
    timestamps(type: :utc_datetime)
  end

  @spec changeset(
          {map, map} | %{:__struct__ => atom | %{__changeset__: map}, optional(atom) => any},
          :invalid | %{optional(:__struct__) => none, optional(atom | binary) => any}
        ) :: Ecto.Changeset.t()
  @doc false
  def changeset(order, attrs) do
    order
    |> cast(attrs, [:number, :date_issued, :delivery_date, :paid, :user_id, :shipper_id])
    |> validate_required([:number, :date_issued, :paid, :user_id])
    |> foreign_key_constraint(:user)
  end
end
