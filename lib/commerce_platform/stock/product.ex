defmodule CommercePlatform.Stock.Product do
  use Ecto.Schema
  import Ecto.Changeset

  schema "products" do
    field :name, :string
    field :price, :float
    field :description, :string
    field :size, :float
    field :weight, :float
    field :image, :string
    field :thumbnail, :string

    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:name, :price, :weight, :size, :description, :thumbnail, :image])
    |> validate_required([:name, :price, :weight, :size, :description, :thumbnail, :image])
  end
end
