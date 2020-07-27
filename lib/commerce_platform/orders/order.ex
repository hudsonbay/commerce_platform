defmodule CommercePlatform.Orders.Order do
  use Ecto.Schema
  import Ecto.Changeset

  alias CommercePlatform.Accounts.User

  schema "orders" do
    field :date_issued, :utc_datetime
    field :number, :string
    field :paid, :boolean, default: false
    field :required_date, :utc_datetime
    belongs_to(:user, User)

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(order, attrs) do
    order
    |> cast(attrs, [:number, :date_issued, :required_date, :paid, :user_id])
    |> validate_required([:number, :date_issued, :required_date, :paid, :user_id])
  end
end
