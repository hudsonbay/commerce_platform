defmodule CommercePlatformWeb.Resolvers.ProductResolver do
  alias CommercePlatform.Stock

  def products(_, _, %{context: context}) do
    IO.inspect(context)
    {:ok, Stock.list_products()}
  end

  def insert_product(_, %{input: input}, _) do
    Stock.create_product(input)
  end
end
