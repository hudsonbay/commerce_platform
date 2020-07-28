defmodule CommercePlatform.Accounts.MembershipType do
  use Ecto.Schema
  import Ecto.Changeset

  schema "membership_types" do
    field :card_img, :string
    field :description, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(membership_type, attrs) do
    membership_type
    |> cast(attrs, [:name, :description, :card_img])
    |> validate_required([:name, :description, :card_img])
  end
end
