defmodule CommercePlatform.Orders do
  @moduledoc """
  The Orders context.
  """

  import Ecto.Query, warn: false
  alias CommercePlatform.Repo

  alias CommercePlatform.Orders.{Order, OrderStatus, OrderPriority}

  # alias CommercePlatform.Accounts.User

  @doc """
  Returns the list of orders.

  ## Examples

      iex> list_orders()
      [%Order{}, ...]

  """
  def list_orders do
    Order
    |> Repo.all()
    |> Repo.preload(:user)
    |> Repo.preload(:order_status)
    |> Repo.preload(:order_priority)
  end

  @doc """
  Gets a single order.

  Raises `Ecto.NoResultsError` if the Order does not exist.

  ## Examples

      iex> get_order!(123)
      %Order{}

      iex> get_order!(456)
      ** (Ecto.NoResultsError)

  """
  def get_order!(id), do: Repo.get!(Order, id)

  @doc """
  Creates a order.

  ## Examples

      iex> create_order(%{field: value})
      {:ok, %Order{}}

      iex> create_order(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_order(attrs \\ %{}) do
    %Order{}
    |> Order.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a order.

  ## Examples

      iex> update_order(order, %{field: new_value})
      {:ok, %Order{}}

      iex> update_order(order, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_order(%Order{} = order, attrs) do
    order
    |> Order.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a order.

  ## Examples

      iex> delete_order(order)
      {:ok, %Order{}}

      iex> delete_order(order)
      {:error, %Ecto.Changeset{}}

  """
  def delete_order(%Order{} = order) do
    Repo.delete(order)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking order changes.

  ## Examples

      iex> change_order(order)
      %Ecto.Changeset{data: %Order{}}

  """
  def change_order(%Order{} = order, attrs \\ %{}) do
    Order.changeset(order, attrs)
  end

  alias CommercePlatform.Orders.Shipper

  @doc """
  Returns the list of shippers.

  ## Examples

      iex> list_shippers()
      [%Shipper{}, ...]

  """
  def list_shippers do
    Repo.all(Shipper)
  end

  @doc """
  Gets a single shipper.

  Raises `Ecto.NoResultsError` if the Shipper does not exist.

  ## Examples

      iex> get_shipper!(123)
      %Shipper{}

      iex> get_shipper!(456)
      ** (Ecto.NoResultsError)

  """
  def get_shipper!(id), do: Repo.get!(Shipper, id)

  @doc """
  Creates a shipper.

  ## Examples

      iex> create_shipper(%{field: value})
      {:ok, %Shipper{}}

      iex> create_shipper(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_shipper(attrs \\ %{}) do
    %Shipper{}
    |> Shipper.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a shipper.

  ## Examples

      iex> update_shipper(shipper, %{field: new_value})
      {:ok, %Shipper{}}

      iex> update_shipper(shipper, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_shipper(%Shipper{} = shipper, attrs) do
    shipper
    |> Shipper.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a shipper.

  ## Examples

      iex> delete_shipper(shipper)
      {:ok, %Shipper{}}

      iex> delete_shipper(shipper)
      {:error, %Ecto.Changeset{}}

  """
  def delete_shipper(%Shipper{} = shipper) do
    Repo.delete(shipper)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking shipper changes.

  ## Examples

      iex> change_shipper(shipper)
      %Ecto.Changeset{data: %Shipper{}}

  """
  def change_shipper(%Shipper{} = shipper, attrs \\ %{}) do
    Shipper.changeset(shipper, attrs)
  end

  alias CommercePlatform.Orders.OrderDetail

  @doc """
  Returns the list of order_details.

  ## Examples

      iex> list_order_details()
      [%OrderDetail{}, ...]

  """
  def list_order_details do
    Repo.all(OrderDetail)
  end

  @doc """
  Gets a single order_detail.

  Raises `Ecto.NoResultsError` if the Order detail does not exist.

  ## Examples

      iex> get_order_detail!(123)
      %OrderDetail{}

      iex> get_order_detail!(456)
      ** (Ecto.NoResultsError)

  """
  def get_order_detail!(id), do: Repo.get!(OrderDetail, id)

  @doc """
  Creates a order_detail.

  ## Examples

      iex> create_order_detail(%{field: value})
      {:ok, %OrderDetail{}}

      iex> create_order_detail(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_order_detail(attrs \\ %{}) do
    %OrderDetail{}
    |> OrderDetail.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a order_detail.

  ## Examples

      iex> update_order_detail(order_detail, %{field: new_value})
      {:ok, %OrderDetail{}}

      iex> update_order_detail(order_detail, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_order_detail(%OrderDetail{} = order_detail, attrs) do
    order_detail
    |> OrderDetail.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a order_detail.

  ## Examples

      iex> delete_order_detail(order_detail)
      {:ok, %OrderDetail{}}

      iex> delete_order_detail(order_detail)
      {:error, %Ecto.Changeset{}}

  """
  def delete_order_detail(%OrderDetail{} = order_detail) do
    Repo.delete(order_detail)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking order_detail changes.

  ## Examples

      iex> change_order_detail(order_detail)
      %Ecto.Changeset{data: %OrderDetail{}}

  """
  def change_order_detail(%OrderDetail{} = order_detail, attrs \\ %{}) do
    OrderDetail.changeset(order_detail, attrs)
  end

  alias CommercePlatform.Orders.OrderStatus

  @doc """
  Returns the list of order_state.

  ## Examples

      iex> list_order_state()
      [%OrderStatus{}, ...]

  """
  def list_order_state do
    Repo.all(OrderStatus)
  end

  @doc """
  Gets a single order_state.

  Raises `Ecto.NoResultsError` if the Order status does not exist.

  ## Examples

      iex> get_order_state!(123)
      %OrderStatus{}

      iex> get_order_state!(456)
      ** (Ecto.NoResultsError)

  """
  def get_order_state!(id), do: Repo.get!(OrderStatus, id)

  @doc """
  Creates a order_state.

  ## Examples

      iex> create_order_state(%{field: value})
      {:ok, %OrderStatus{}}

      iex> create_order_state(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_order_state(attrs \\ %{}) do
    %OrderStatus{}
    |> OrderStatus.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a order_state.

  ## Examples

      iex> update_order_state(order_state, %{field: new_value})
      {:ok, %OrderStatus{}}

      iex> update_order_state(order_state, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_order_state(%OrderStatus{} = order_state, attrs) do
    order_state
    |> OrderStatus.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a order_state.

  ## Examples

      iex> delete_order_state(order_state)
      {:ok, %OrderStatus{}}

      iex> delete_order_state(order_state)
      {:error, %Ecto.Changeset{}}

  """
  def delete_order_state(%OrderStatus{} = order_state) do
    Repo.delete(order_state)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking order_state changes.

  ## Examples

      iex> change_order_state(order_state)
      %Ecto.Changeset{data: %OrderStatus{}}

  """
  def change_order_state(%OrderStatus{} = order_state, attrs \\ %{}) do
    OrderStatus.changeset(order_state, attrs)
  end

  alias CommercePlatform.Orders.OrderPriority

  @doc """
  Returns the list of order_priorities.

  ## Examples

      iex> list_order_priorities()
      [%OrderPriority{}, ...]

  """
  def list_order_priorities do
    Repo.all(OrderPriority)
  end

  @doc """
  Gets a single order_priority.

  Raises `Ecto.NoResultsError` if the Order priority does not exist.

  ## Examples

      iex> get_order_priority!(123)
      %OrderPriority{}

      iex> get_order_priority!(456)
      ** (Ecto.NoResultsError)

  """
  def get_order_priority!(id), do: Repo.get!(OrderPriority, id)

  @doc """
  Creates a order_priority.

  ## Examples

      iex> create_order_priority(%{field: value})
      {:ok, %OrderPriority{}}

      iex> create_order_priority(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_order_priority(attrs \\ %{}) do
    %OrderPriority{}
    |> OrderPriority.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a order_priority.

  ## Examples

      iex> update_order_priority(order_priority, %{field: new_value})
      {:ok, %OrderPriority{}}

      iex> update_order_priority(order_priority, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_order_priority(%OrderPriority{} = order_priority, attrs) do
    order_priority
    |> OrderPriority.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a order_priority.

  ## Examples

      iex> delete_order_priority(order_priority)
      {:ok, %OrderPriority{}}

      iex> delete_order_priority(order_priority)
      {:error, %Ecto.Changeset{}}

  """
  def delete_order_priority(%OrderPriority{} = order_priority) do
    Repo.delete(order_priority)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking order_priority changes.

  ## Examples

      iex> change_order_priority(order_priority)
      %Ecto.Changeset{data: %OrderPriority{}}

  """
  def change_order_priority(%OrderPriority{} = order_priority, attrs \\ %{}) do
    OrderPriority.changeset(order_priority, attrs)
  end
end
