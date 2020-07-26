defmodule CommercePlatformWeb.Resolvers.ProductCategoryResolver do
  alias CommercePlatform.Stock

  def product_categories(_, _, %{context: context}) do
    IO.inspect(context)
    {:ok, Stock.list_product_categories()}
  end

  def insert_product_category(_, %{input: input}, _) do
    Stock.create_product_category(input)
  end
end
