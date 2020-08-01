defmodule CommercePlatformWeb.Resolvers.ProductResolver do
  alias CommercePlatform.Stock

  def all_products(_, _, %{context: context}) do
    IO.inspect(context)
    {:ok, Stock.list_products()}
  end

  def available_products(_, _, %{context: context}) do
    IO.inspect(context)
    {:ok, Stock.list_available_products()}
  end

  # TODO: Fix case product not found
  def get_product_by_id(%{id: id}, _info) do
    case Stock.get_product!(id) do
      nil -> {:error, "Product id #{id} not found"}
      product -> {:ok, product}
    end
  end

  # def get_product_by_name(%{name: string}, _info) do
  #   case Stock.get_product_by_name!(name) do
  #     nil -> {:error, "Product name #{name} not found"}
  #     product -> {:ok, product}
  #   end
  # end

  def insert_product(_, %{input: input}, _) do
    Stock.create_product(input)
  end
end
