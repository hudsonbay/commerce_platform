defmodule CommetcePlatformWeb.Middleware.Authenticate do
  @behaviour Absinthe.Middleware

  def call(resolution = %{context: %{user_id: _}}, _config) do
    resolution
  end

  def call(resolution, _config) do
    resolution
    |> Absinthe.Resolution.put_result(
      {:error,
       %{code: :not_authenticated, error: "Not authenticated", message: "Not authenticated"}}
    )
  end
end
