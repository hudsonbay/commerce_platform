defmodule CommercePlatformWeb.Resolvers.CountryResolver do
  alias CommercePlatform.World

  def countries(_, _, %{context: context}) do
    IO.inspect(context)
    {:ok, World.list_countries()}
  end
end
