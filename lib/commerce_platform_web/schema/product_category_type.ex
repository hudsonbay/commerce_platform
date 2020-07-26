defmodule CommercePlatformWeb.Schema.Types.ProductCategoryType do
  use Absinthe.Schema.Notation

  object :product_category_type do
    field(:id, :id)
    field(:name, :string)
    field(:description, :string)
  end

  input_object :product_category_input_type do
    field(:name, non_null(:string))
    field(:description, non_null(:string))
  end
end
