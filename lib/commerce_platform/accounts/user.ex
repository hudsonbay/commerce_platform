defmodule CommercePlatform.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias CommercePlatform.Accounts.MembershipType
  alias CommercePlatform.Accounts.ShippingAddress

  schema "users" do
    field :email, :string, unique: true
    field :first_name, :string
    field :last_name, :string
    field :phone, :string
    field :role, :string, default: "user"
    belongs_to(:membership_type, MembershipType)

    field :password_hash, :string
    field :password, :string, virtual: true
    field :password_confirmation, :string, virtual: true

    has_many :shipping_addresses, ShippingAddress

    # TODO: add these fields credit_card, credit_card_type_id, 
    # TODO: Que al registrar un nuevo usuario tenga  por defecto el campo membership_type_id
    # con la referencia al id 1 :none y que sea requerido

    timestamps()
  end

  @spec changeset(
          {map, map} | %{:__struct__ => atom | %{__changeset__: map}, optional(atom) => any},
          :invalid | %{optional(:__struct__) => none, optional(atom | binary) => any}
        ) :: Ecto.Changeset.t()
  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [
      :first_name,
      :last_name,
      :email,
      :password,
      :password_confirmation,
      :role,
      :membership_type_id,
      :phone
    ])
    |> validate_required([
      :first_name,
      :last_name,
      :email,
      :password,
      :password_confirmation,
      :role
      # :membership_type_id
    ])
    |> validate_format(:email, ~r/@/)
    |> update_change(:email, &String.downcase(&1))
    |> validate_length(:password, min: 6, max: 100)
    |> validate_confirmation(:password)
    |> unique_constraint(:email)
    |> hash_password
  end

  defp hash_password(%Ecto.Changeset{valid?: true, changes: %{password: password}} = changeset) do
    change(changeset, Argon2.add_hash(password))
  end

  defp hash_password(changeset) do
    changeset
  end
end
