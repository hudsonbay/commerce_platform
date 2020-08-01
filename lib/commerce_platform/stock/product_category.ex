defmodule CommercePlatform.Stock.ProductCategory do
  use Ecto.Schema
  import Ecto.Changeset

  alias CommercePlatform.Stock.ProductSubcategory

  schema "product_categories" do
    field :description, :string
    field :name, :string

    has_many :product_subcategories, ProductSubcategory

    timestamps()
  end

  @doc false
  def changeset(product_category, attrs) do
    product_category
    |> cast(attrs, [:name, :description])
    |> validate_required([:name, :description])
  end
end
