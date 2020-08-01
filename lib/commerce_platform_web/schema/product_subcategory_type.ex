defmodule CommercePlatformWeb.Schema.Types.ProductSubcategoryType do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: CommercePlatform.Repo

  object :product_subcategory_type do
    field(:id, :id)
    field(:name, :string)
    field(:description, :string)
    field(:product_category, :product_category_type, resolve: assoc(:product_category))
  end

  input_object :product_subcategory_input_type do
    field(:name, non_null(:string))
    field(:description, non_null(:string))
    field(:product_category_id, non_null(:integer))
  end
end
