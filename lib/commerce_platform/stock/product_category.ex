defmodule CommercePlatform.Stock.ProductCategory do
  use Ecto.Schema
  import Ecto.Changeset

  alias CommercePlatform.Stock.Product

  schema "product_categories" do
    field :description, :string
    field :name, :string

    has_many :products, Product

    timestamps()
  end

  @doc false
  def changeset(product_category, attrs) do
    product_category
    |> cast(attrs, [:name, :description])
    |> validate_required([:name, :description])
  end
end
