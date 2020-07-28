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
end
