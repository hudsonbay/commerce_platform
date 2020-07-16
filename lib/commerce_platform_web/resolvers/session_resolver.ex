defmodule CommercePlatformWeb.Resolvers.SessionResolver do
  alias CommercePlatform.{Accounts, Guardian}

  @doc """
  Check if the user is in our database. If it is registered we want to return the token and the user
  """
  def login_user(_, %{input: input}, _) do
    with {:ok, user} <- Accounts.Session.authenticate(input),
         {:ok, jwt_token, _} <- Guardian.encode_and_sign(user) do
      {:ok, %{token: jwt_token, user: user}}
    end
  end
end
