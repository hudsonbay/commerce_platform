defmodule CommercePlatform.Accounts.Role do
  use Ecto.Schema
  import Ecto.Changeset
  alias CommercePlatform.Accounts.Permission

  schema "roles" do
    field :name, :string
    has_many :permissions, Permission

    timestamps()
  end

  @doc false
  def changeset(role, attrs) do
    role
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
