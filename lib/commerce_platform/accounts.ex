defmodule CommercePlatform.Accounts do
  @moduledoc """
  The Accounts context.
  """

  import Ecto.Query, warn: false
  alias CommercePlatform.Repo

  alias CommercePlatform.Accounts.User

  @doc """
  Returns the list of users.

  ## Examples

      iex> list_users()
      [%User{}, ...]

  """
  def list_users do
    Repo.all(User)
  end

  @doc """
  Gets a single user.

  Raises `Ecto.NoResultsError` if the User does not exist.

  ## Examples

      iex> get_user!(123)
      %User{}

      iex> get_user!(456)
      ** (Ecto.NoResultsError)

  """
  def get_user!(id), do: Repo.get!(User, id)

  @doc """
  Creates a user.

  ## Examples

      iex> create_user(%{field: value})
      {:ok, %User{}}

      iex> create_user(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a user.

  ## Examples

      iex> update_user(user, %{field: new_value})
      {:ok, %User{}}

      iex> update_user(user, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_user(%User{} = user, attrs) do
    user
    |> User.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a user.

  ## Examples

      iex> delete_user(user)
      {:ok, %User{}}

      iex> delete_user(user)
      {:error, %Ecto.Changeset{}}

  """
  def delete_user(%User{} = user) do
    Repo.delete(user)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking user changes.

  ## Examples

      iex> change_user(user)
      %Ecto.Changeset{data: %User{}}

  """
  def change_user(%User{} = user, attrs \\ %{}) do
    User.changeset(user, attrs)
  end

  alias CommercePlatform.Accounts.MembershipType

  @doc """
  Returns the list of membership_types.

  ## Examples

      iex> list_membership_types()
      [%MembershipType{}, ...]

  """
  def list_membership_types do
    Repo.all(MembershipType)
  end

  @doc """
  Gets a single membership_type.

  Raises `Ecto.NoResultsError` if the Membership type does not exist.

  ## Examples

      iex> get_membership_type!(123)
      %MembershipType{}

      iex> get_membership_type!(456)
      ** (Ecto.NoResultsError)

  """
  def get_membership_type!(id), do: Repo.get!(MembershipType, id)

  @doc """
  Creates a membership_type.

  ## Examples

      iex> create_membership_type(%{field: value})
      {:ok, %MembershipType{}}

      iex> create_membership_type(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_membership_type(attrs \\ %{}) do
    %MembershipType{}
    |> MembershipType.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a membership_type.

  ## Examples

      iex> update_membership_type(membership_type, %{field: new_value})
      {:ok, %MembershipType{}}

      iex> update_membership_type(membership_type, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_membership_type(%MembershipType{} = membership_type, attrs) do
    membership_type
    |> MembershipType.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a membership_type.

  ## Examples

      iex> delete_membership_type(membership_type)
      {:ok, %MembershipType{}}

      iex> delete_membership_type(membership_type)
      {:error, %Ecto.Changeset{}}

  """
  def delete_membership_type(%MembershipType{} = membership_type) do
    Repo.delete(membership_type)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking membership_type changes.

  ## Examples

      iex> change_membership_type(membership_type)
      %Ecto.Changeset{data: %MembershipType{}}

  """
  def change_membership_type(%MembershipType{} = membership_type, attrs \\ %{}) do
    MembershipType.changeset(membership_type, attrs)
  end

  alias CommercePlatform.Accounts.Role

  @doc """
  Returns the list of roles.

  ## Examples

      iex> list_roles()
      [%Role{}, ...]

  """
  def list_roles do
    Repo.all(Role)
  end

  @doc """
  Gets a single role.

  Raises `Ecto.NoResultsError` if the Role does not exist.

  ## Examples

      iex> get_role!(123)
      %Role{}

      iex> get_role!(456)
      ** (Ecto.NoResultsError)

  """
  def get_role!(id), do: Repo.get!(Role, id)

  @doc """
  Creates a role.

  ## Examples

      iex> create_role(%{field: value})
      {:ok, %Role{}}

      iex> create_role(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_role(attrs \\ %{}) do
    %Role{}
    |> Role.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a role.

  ## Examples

      iex> update_role(role, %{field: new_value})
      {:ok, %Role{}}

      iex> update_role(role, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_role(%Role{} = role, attrs) do
    role
    |> Role.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a role.

  ## Examples

      iex> delete_role(role)
      {:ok, %Role{}}

      iex> delete_role(role)
      {:error, %Ecto.Changeset{}}

  """
  def delete_role(%Role{} = role) do
    Repo.delete(role)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking role changes.

  ## Examples

      iex> change_role(role)
      %Ecto.Changeset{data: %Role{}}

  """
  def change_role(%Role{} = role, attrs \\ %{}) do
    Role.changeset(role, attrs)
  end

  alias CommercePlatform.Accounts.Permission

  @doc """
  Returns the list of permissions.

  ## Examples

      iex> list_permissions()
      [%Permission{}, ...]

  """
  def list_permissions do
    Repo.all(Permission)
  end

  @doc """
  Gets a single permission.

  Raises `Ecto.NoResultsError` if the Permission does not exist.

  ## Examples

      iex> get_permission!(123)
      %Permission{}

      iex> get_permission!(456)
      ** (Ecto.NoResultsError)

  """
  def get_permission!(id), do: Repo.get!(Permission, id)

  @doc """
  Creates a permission.

  ## Examples

      iex> create_permission(%{field: value})
      {:ok, %Permission{}}

      iex> create_permission(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_permission(attrs \\ %{}) do
    %Permission{}
    |> Permission.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a permission.

  ## Examples

      iex> update_permission(permission, %{field: new_value})
      {:ok, %Permission{}}

      iex> update_permission(permission, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_permission(%Permission{} = permission, attrs) do
    permission
    |> Permission.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a permission.

  ## Examples

      iex> delete_permission(permission)
      {:ok, %Permission{}}

      iex> delete_permission(permission)
      {:error, %Ecto.Changeset{}}

  """
  def delete_permission(%Permission{} = permission) do
    Repo.delete(permission)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking permission changes.

  ## Examples

      iex> change_permission(permission)
      %Ecto.Changeset{data: %Permission{}}

  """
  def change_permission(%Permission{} = permission, attrs \\ %{}) do
    Permission.changeset(permission, attrs)
  end

  alias CommercePlatform.Accounts.ShippingAddress

  @doc """
  Returns the list of shipping_addresses.

  ## Examples

      iex> list_shipping_addresses()
      [%ShippingAddress{}, ...]

  """
  def list_shipping_addresses do
    Repo.all(ShippingAddress)
  end

  @doc """
  Gets a single shipping_address.

  Raises `Ecto.NoResultsError` if the Shipping address does not exist.

  ## Examples

      iex> get_shipping_address!(123)
      %ShippingAddress{}

      iex> get_shipping_address!(456)
      ** (Ecto.NoResultsError)

  """
  def get_shipping_address!(id), do: Repo.get!(ShippingAddress, id)

  @doc """
  Creates a shipping_address.

  ## Examples

      iex> create_shipping_address(%{field: value})
      {:ok, %ShippingAddress{}}

      iex> create_shipping_address(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_shipping_address(attrs \\ %{}) do
    %ShippingAddress{}
    |> ShippingAddress.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a shipping_address.

  ## Examples

      iex> update_shipping_address(shipping_address, %{field: new_value})
      {:ok, %ShippingAddress{}}

      iex> update_shipping_address(shipping_address, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_shipping_address(%ShippingAddress{} = shipping_address, attrs) do
    shipping_address
    |> ShippingAddress.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a shipping_address.

  ## Examples

      iex> delete_shipping_address(shipping_address)
      {:ok, %ShippingAddress{}}

      iex> delete_shipping_address(shipping_address)
      {:error, %Ecto.Changeset{}}

  """
  def delete_shipping_address(%ShippingAddress{} = shipping_address) do
    Repo.delete(shipping_address)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking shipping_address changes.

  ## Examples

      iex> change_shipping_address(shipping_address)
      %Ecto.Changeset{data: %ShippingAddress{}}

  """
  def change_shipping_address(%ShippingAddress{} = shipping_address, attrs \\ %{}) do
    ShippingAddress.changeset(shipping_address, attrs)
  end
end
