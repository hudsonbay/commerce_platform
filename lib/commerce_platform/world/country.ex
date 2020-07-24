defmodule CommercePlatform.World.Country do
  use Ecto.Schema
  import Ecto.Changeset

  schema "countries" do
    field :capital, :integer
    field :code, :string
    field :code2, :string
    field :continent, :string
    field :gnp, :float
    field :gnpold, :float
    field :government_form, :string
    field :head_of_state, :string
    field :indepyear, :integer
    field :life_expectancy, :float
    field :local_name, :string
    field :name, :string
    field :population, :integer
    field :region, :string
    field :surface_area, :float
  end

  @doc false
  def changeset(country, attrs) do
    country
    |> cast(attrs, [
      :code,
      :name,
      :continent,
      :region,
      :surface_area,
      :indepyear,
      :population,
      :life_expectancy,
      :gnp,
      :gnpold,
      :local_name,
      :government_form,
      :head_of_state,
      :capital,
      :code2
    ])
    |> validate_required([
      :code,
      :name,
      :continent,
      :region,
      :surface_area,
      :indepyear,
      :population,
      :life_expectancy,
      :gnp,
      :gnpold,
      :local_name,
      :government_form,
      :head_of_state,
      :capital,
      :code2
    ])
  end
end
