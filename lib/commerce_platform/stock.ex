defmodule CommercePlatform.Stock do
  @moduledoc """
  The Stock context.
  """

  import Ecto.Query, warn: false
  alias CommercePlatform.Repo

  alias CommercePlatform.Stock.Product

  @doc """
  Returns the list of all products.

  ## Examples

      iex> list_products()
      [%Product{}, ...]

  """
  def list_products do
    Repo.all(Product)
  end

  @doc """
  Returns the list of the available products
  """
  def list_available_products do
    from(p in Product, where: p.stock > 0)
    |> Repo.all()
  end

  @doc """
  Gets a single product.

  Raises `Ecto.NoResultsError` if the Product does not exist.

  ## Examples

      iex> get_product!(123)
      %Product{}

      iex> get_product!(456)
      ** (Ecto.NoResultsError)

  """
  def get_product!(id), do: Repo.get!(Product, id)

  @doc """
  Creates a product.

  ## Examples

      iex> create_product(%{field: value})
      {:ok, %Product{}}

      iex> create_product(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_product(attrs \\ %{}) do
    %Product{}
    |> Product.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a product.

  ## Examples

      iex> update_product(product, %{field: new_value})
      {:ok, %Product{}}

      iex> update_product(product, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_product(%Product{} = product, attrs) do
    product
    |> Product.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a product.

  ## Examples

      iex> delete_product(product)
      {:ok, %Product{}}

      iex> delete_product(product)
      {:error, %Ecto.Changeset{}}

  """
  def delete_product(%Product{} = product) do
    Repo.delete(product)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking product changes.

  ## Examples

      iex> change_product(product)
      %Ecto.Changeset{data: %Product{}}

  """
  def change_product(%Product{} = product, attrs \\ %{}) do
    Product.changeset(product, attrs)
  end

  alias CommercePlatform.Stock.ProductCategory

  @doc """
  Returns the list of product_categories.

  ## Examples

      iex> list_product_categories()
      [%ProductCategory{}, ...]

  """
  def list_product_categories do
    Repo.all(ProductCategory)
  end

  @doc """
  Gets a single product_category.

  Raises `Ecto.NoResultsError` if the Product category does not exist.

  ## Examples

      iex> get_product_category!(123)
      %ProductCategory{}

      iex> get_product_category!(456)
      ** (Ecto.NoResultsError)

  """
  def get_product_category!(id), do: Repo.get!(ProductCategory, id)

  @doc """
  Creates a product_category.

  ## Examples

      iex> create_product_category(%{field: value})
      {:ok, %ProductCategory{}}

      iex> create_product_category(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_product_category(attrs \\ %{}) do
    %ProductCategory{}
    |> ProductCategory.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a product_category.

  ## Examples

      iex> update_product_category(product_category, %{field: new_value})
      {:ok, %ProductCategory{}}

      iex> update_product_category(product_category, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_product_category(%ProductCategory{} = product_category, attrs) do
    product_category
    |> ProductCategory.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a product_category.

  ## Examples

      iex> delete_product_category(product_category)
      {:ok, %ProductCategory{}}

      iex> delete_product_category(product_category)
      {:error, %Ecto.Changeset{}}

  """
  def delete_product_category(%ProductCategory{} = product_category) do
    Repo.delete(product_category)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking product_category changes.

  ## Examples

      iex> change_product_category(product_category)
      %Ecto.Changeset{data: %ProductCategory{}}

  """
  def change_product_category(%ProductCategory{} = product_category, attrs \\ %{}) do
    ProductCategory.changeset(product_category, attrs)
  end

  alias CommercePlatform.Stock.ProductSubcategory

  @doc """
  Returns the list of product_subcategories.

  ## Examples

      iex> list_product_subcategories()
      [%ProductSubcategory{}, ...]

  """
  def list_product_subcategories do
    Repo.all(ProductSubcategory)
  end

  @doc """
  Gets a single product_subcategory.

  Raises `Ecto.NoResultsError` if the Product subcategory does not exist.

  ## Examples

      iex> get_product_subcategory!(123)
      %ProductSubcategory{}

      iex> get_product_subcategory!(456)
      ** (Ecto.NoResultsError)

  """
  def get_product_subcategory!(id), do: Repo.get!(ProductSubcategory, id)

  @doc """
  Creates a product_subcategory.

  ## Examples

      iex> create_product_subcategory(%{field: value})
      {:ok, %ProductSubcategory{}}

      iex> create_product_subcategory(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_product_subcategory(attrs \\ %{}) do
    %ProductSubcategory{}
    |> ProductSubcategory.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a product_subcategory.

  ## Examples

      iex> update_product_subcategory(product_subcategory, %{field: new_value})
      {:ok, %ProductSubcategory{}}

      iex> update_product_subcategory(product_subcategory, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_product_subcategory(%ProductSubcategory{} = product_subcategory, attrs) do
    product_subcategory
    |> ProductSubcategory.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a product_subcategory.

  ## Examples

      iex> delete_product_subcategory(product_subcategory)
      {:ok, %ProductSubcategory{}}

      iex> delete_product_subcategory(product_subcategory)
      {:error, %Ecto.Changeset{}}

  """
  def delete_product_subcategory(%ProductSubcategory{} = product_subcategory) do
    Repo.delete(product_subcategory)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking product_subcategory changes.

  ## Examples

      iex> change_product_subcategory(product_subcategory)
      %Ecto.Changeset{data: %ProductSubcategory{}}

  """
  def change_product_subcategory(%ProductSubcategory{} = product_subcategory, attrs \\ %{}) do
    ProductSubcategory.changeset(product_subcategory, attrs)
  end
end
