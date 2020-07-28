defmodule CommercePlatform.Stock.ProductSubcategory do
  use Ecto.Schema
  import Ecto.Changeset

  alias CommercePlatform.Stock.ProductCategory

  schema "product_subcategories" do
    field :description, :string
    field :name, :string
    # field :product_category_id, :id
    belongs_to(:product_category, ProductCategory)

    timestamps()
  end

  @doc false
  def changeset(product_subcategory, attrs) do
    product_subcategory
    |> cast(attrs, [:name, :description, :product_category_id])
    |> validate_required([:name, :description, :product_category_id])
  end
end
