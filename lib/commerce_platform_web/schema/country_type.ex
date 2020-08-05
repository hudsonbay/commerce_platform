defmodule CommercePlatformWeb.Schema.Types.CountryType do
  use Absinthe.Schema.Notation

  object :country_type do
    field(:id, :id)
    field(:name, :string)
    field(:iso, :string)
    field(:iso3, :string)
    field(:iso_name, :string)
  end
end
