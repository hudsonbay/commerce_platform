defmodule CommercePlatformWeb.Schema.Types.ProductType do
  use Absinthe.Schema.Notation

  object :product_type do
    field(:id, :id)
    field(:name, :string)
    field(:price, :float)
    field(:stock, :integer)
    field(:description, :string)
    field(:size, :float)
    field(:weight, :float)
    field(:image, :string)
    field(:thumbnail, :string)
  end

  input_object :product_input_type do
    field(:name, non_null(:string))
    field(:price, non_null(:float))
    field(:stock, non_null(:integer))
    field(:description, non_null(:string))
    field(:size, non_null(:float))
    field(:weight, non_null(:float))
    field(:image, non_null(:string))
    field(:thumbnail, non_null(:string))
  end
end
