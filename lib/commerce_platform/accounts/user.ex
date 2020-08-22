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

    # TODO: add these fields credit_card, credit_card_type_id

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
    ])
    |> validate_format(:email, ~r/@/)
    |> update_change(:email, &String.downcase(&1))
    |> validate_length(:password, min: 6, max: 100)
    |> validate_confirmation(:password)
    # By default, Ecto infers the constraint name for us, but it can also be given with the :name option. Calling
    # unique_constraint won’t perform any validation on the spot. Instead, it stores all the relevant information in
    # the changeset. When it’s time, the repository can convert those constraints into a human-readable error
    |> unique_constraint(:email)
    |> hash_password
    # Assigns a default membership to the user, which will be none, and has the id of 1
    |> put_change(:membership_type_id, 1)
  end

  # We check to see if the changeset is valid so we won’t waste time hashing an
  # invalid or missing password. Then, we use Argon2 to hash our password,
  # following the instructions in its readme file. Finally, we put the result into the
  # changeset as password_hash. If the changeset is invalid, we simply return it to
  # the caller.
  defp hash_password(%Ecto.Changeset{valid?: true, changes: %{password: password}} = changeset) do
    change(changeset, Argon2.add_hash(password))
  end

  defp hash_password(changeset) do
    changeset
  end
end
