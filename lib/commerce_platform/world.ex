defmodule CommercePlatform.World do
  @moduledoc """
  The World context.
  """

  import Ecto.Query, warn: false
  alias CommercePlatform.Repo

  alias CommercePlatform.World.Country

  @doc """
  Returns the list of countries.

  ## Examples

      iex> list_countries()
      [%Country{}, ...]

  """
  def list_countries do
    Repo.all(Country)
  end

  @doc """
  Gets a single country.

  Raises `Ecto.NoResultsError` if the Country does not exist.

  ## Examples

      iex> get_country!(123)
      %Country{}

      iex> get_country!(456)
      ** (Ecto.NoResultsError)

  """
  def get_country!(id), do: Repo.get!(Country, id)

  @doc """
  Creates a country.

  ## Examples

      iex> create_country(%{field: value})
      {:ok, %Country{}}

      iex> create_country(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_country(attrs \\ %{}) do
    %Country{}
    |> Country.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a country.

  ## Examples

      iex> update_country(country, %{field: new_value})
      {:ok, %Country{}}

      iex> update_country(country, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_country(%Country{} = country, attrs) do
    country
    |> Country.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a country.

  ## Examples

      iex> delete_country(country)
      {:ok, %Country{}}

      iex> delete_country(country)
      {:error, %Ecto.Changeset{}}

  """
  def delete_country(%Country{} = country) do
    Repo.delete(country)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking country changes.

  ## Examples

      iex> change_country(country)
      %Ecto.Changeset{data: %Country{}}

  """
  def change_country(%Country{} = country, attrs \\ %{}) do
    Country.changeset(country, attrs)
  end

  alias CommercePlatform.World.State

  @doc """
  Returns the list of states.

  ## Examples

      iex> list_states()
      [%State{}, ...]

  """
  def list_states do
    Repo.all(State)
  end

  @doc """
  Gets a single state.

  Raises `Ecto.NoResultsError` if the State does not exist.

  ## Examples

      iex> get_state!(123)
      %State{}

      iex> get_state!(456)
      ** (Ecto.NoResultsError)

  """
  def get_state!(id), do: Repo.get!(State, id)

  @doc """
  Creates a state.

  ## Examples

      iex> create_state(%{field: value})
      {:ok, %State{}}

      iex> create_state(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_state(attrs \\ %{}) do
    %State{}
    |> State.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a state.

  ## Examples

      iex> update_state(state, %{field: new_value})
      {:ok, %State{}}

      iex> update_state(state, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_state(%State{} = state, attrs) do
    state
    |> State.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a state.

  ## Examples

      iex> delete_state(state)
      {:ok, %State{}}

      iex> delete_state(state)
      {:error, %Ecto.Changeset{}}

  """
  def delete_state(%State{} = state) do
    Repo.delete(state)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking state changes.

  ## Examples

      iex> change_state(state)
      %Ecto.Changeset{data: %State{}}

  """
  def change_state(%State{} = state, attrs \\ %{}) do
    State.changeset(state, attrs)
  end

  alias CommercePlatform.World.Zone

  @doc """
  Returns the list of zones.

  ## Examples

      iex> list_zones()
      [%Zone{}, ...]

  """
  def list_zones do
    Repo.all(Zone)
  end

  @doc """
  Gets a single zone.

  Raises `Ecto.NoResultsError` if the Zone does not exist.

  ## Examples

      iex> get_zone!(123)
      %Zone{}

      iex> get_zone!(456)
      ** (Ecto.NoResultsError)

  """
  def get_zone!(id), do: Repo.get!(Zone, id)

  @doc """
  Creates a zone.

  ## Examples

      iex> create_zone(%{field: value})
      {:ok, %Zone{}}

      iex> create_zone(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_zone(attrs \\ %{}) do
    %Zone{}
    |> Zone.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a zone.

  ## Examples

      iex> update_zone(zone, %{field: new_value})
      {:ok, %Zone{}}

      iex> update_zone(zone, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_zone(%Zone{} = zone, attrs) do
    zone
    |> Zone.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a zone.

  ## Examples

      iex> delete_zone(zone)
      {:ok, %Zone{}}

      iex> delete_zone(zone)
      {:error, %Ecto.Changeset{}}

  """
  def delete_zone(%Zone{} = zone) do
    Repo.delete(zone)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking zone changes.

  ## Examples

      iex> change_zone(zone)
      %Ecto.Changeset{data: %Zone{}}

  """
  def change_zone(%Zone{} = zone, attrs \\ %{}) do
    Zone.changeset(zone, attrs)
  end

  alias CommercePlatform.World.ZoneMember

  @doc """
  Returns the list of zone_members.

  ## Examples

      iex> list_zone_members()
      [%ZoneMember{}, ...]

  """
  def list_zone_members do
    Repo.all(ZoneMember)
  end

  @doc """
  Gets a single zone_member.

  Raises `Ecto.NoResultsError` if the Zone member does not exist.

  ## Examples

      iex> get_zone_member!(123)
      %ZoneMember{}

      iex> get_zone_member!(456)
      ** (Ecto.NoResultsError)

  """
  def get_zone_member!(id), do: Repo.get!(ZoneMember, id)

  @doc """
  Creates a zone_member.

  ## Examples

      iex> create_zone_member(%{field: value})
      {:ok, %ZoneMember{}}

      iex> create_zone_member(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_zone_member(attrs \\ %{}) do
    %ZoneMember{}
    |> ZoneMember.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a zone_member.

  ## Examples

      iex> update_zone_member(zone_member, %{field: new_value})
      {:ok, %ZoneMember{}}

      iex> update_zone_member(zone_member, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_zone_member(%ZoneMember{} = zone_member, attrs) do
    zone_member
    |> ZoneMember.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a zone_member.

  ## Examples

      iex> delete_zone_member(zone_member)
      {:ok, %ZoneMember{}}

      iex> delete_zone_member(zone_member)
      {:error, %Ecto.Changeset{}}

  """
  def delete_zone_member(%ZoneMember{} = zone_member) do
    Repo.delete(zone_member)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking zone_member changes.

  ## Examples

      iex> change_zone_member(zone_member)
      %Ecto.Changeset{data: %ZoneMember{}}

  """
  def change_zone_member(%ZoneMember{} = zone_member, attrs \\ %{}) do
    ZoneMember.changeset(zone_member, attrs)
  end
end
