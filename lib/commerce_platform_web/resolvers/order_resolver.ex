defmodule CommercePlatformWeb.Resolvers.OrderResolver do
  alias CommercePlatform.Orders

  def all_orders(_, _, %{context: context}) do
    IO.inspect(context)
    {:ok, Orders.list_orders()}
  end

  def insert_order(_, %{input: input}, _) do
    Orders.create_order(input)
  end
end
