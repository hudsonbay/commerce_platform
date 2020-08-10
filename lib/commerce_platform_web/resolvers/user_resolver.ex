defmodule CommercePlatformWeb.Resolvers.UserResolver do
  alias CommercePlatform.Accounts

  def users(_, _, %{context: context}) do
    IO.inspect(context)
    {:ok, Accounts.list_users()}
  end

  def register_user(_, %{input: input}, _) do
    Accounts.create_user(input)
  end

  def list_shipping_addresses(_, _, %{context: context}) do
    IO.inspect(context)
    {:ok, Accounts.list_users()}
  end

  def list_shipping_addresses_by_user(_, %{id: id}, _info) do
    {:ok, Accounts.list_shipping_addresses_by_user(id)}
  end

  # TODO: Fix case user not found
  def get_user_by_id(%{id: id}, _info) do
    case Accounts.get_user!(id) do
      nil -> {:error, "User id #{id} not found"}
      user -> {:ok, user}
    end
  end
end
