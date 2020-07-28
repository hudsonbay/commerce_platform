defmodule CommercePlatform.Orders do
  @moduledoc """
  The Orders context.
  """

  import Ecto.Query, warn: false
  alias CommercePlatform.Repo

  alias CommercePlatform.Orders.Order

  @doc """
  Returns the list of orders.

  ## Examples

      iex> list_orders()
      [%Order{}, ...]

  """
  def list_orders do
    Repo.all(Order)
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
end
