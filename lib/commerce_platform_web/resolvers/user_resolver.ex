defmodule CommercePlatformWeb.Resolvers.UserResolver do
  alias CommercePlatform.Accounts

  def users(_, _, %{context: context}) do
    IO.inspect(context)
    {:ok, Accounts.list_users()}
  end

  def register_user(_, %{input: input}, _) do
    Accounts.create_user(input)
  end
end
