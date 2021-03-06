defmodule CommercePlatform.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias CommercePlatform.Accounts.MembershipType

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

    field :shipping_address, :string
    field :shipping_city, :string
    field :shipping_region, :string
    field :shipping_state, :string
    field :shipping_postal_code, :string

    field :billing_address, :string
    field :billing_city, :string
    field :billing_region, :string
    field :billing_state, :string
    field :billing_postal_code, :string

    # TODO: add these fields credit_card, credit_card_type_id, shipping_country_id belongs_to :country, Country, field :shipping_country, :string, 
    # field :billing_country, :string
    # TODO: see if there's gonna be an address 1 and address 2, and subsequently a default address
    # TODO: Que al registrar un nuevo usuario tenga  por defecto el campo membership_type_id con la referencia al id 1 :none y que sea requerido

    timestamps()
  end

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
      :shipping_address,
      :shipping_city,
      :shipping_region,
      :shipping_state,
      :shipping_postal_code,
      :billing_address,
      :billing_city,
      :billing_region,
      :billing_state,
      :billing_postal_code
    ])
    |> validate_required([
      :first_name,
      :last_name,
      :email,
      :password,
      :password_confirmation,
      :role
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
