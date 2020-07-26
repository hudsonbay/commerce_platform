defmodule CommercePlatform.Stock.Product do
  use Ecto.Schema
  import Ecto.Changeset

  alias CommercePlatform.Stock.ProductCategory

  schema "products" do
    field :name, :string
    field :price, :float
    field :description, :string
    field :stock, :integer
    field :size, :float
    field :weight, :float
    field :image, :string
    field :thumbnail, :string
    belongs_to :product_category, ProductCategory
    # TODO: add unidad_de_medida
    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [
      :name,
      :price,
      :stock,
      :weight,
      :size,
      :description,
      :thumbnail,
      :image,
      :product_category_id
    ])
    |> validate_required([
      :name,
      :price,
      :stock,
      :weight,
      :size,
      :description,
      :thumbnail,
      :image,
      :product_category_id
    ])
    |> foreign_key_constraint(:product_category)
  end
end
