defmodule CommercePlatform.Accounts.Permission do
  use Ecto.Schema
  import Ecto.Changeset

  alias CommercePlatform.Accounts.Role

  schema "permissions" do
    field :action, :string
    field :name, :string
    belongs_to :role, Role

    timestamps()
  end

  @doc false
  def changeset(permission, attrs) do
    permission
    |> cast(attrs, [:name, :action, :role_id])
    |> validate_required([:name, :action])
  end
end
