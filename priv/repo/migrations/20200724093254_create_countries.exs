defmodule CommercePlatform.Repo.Migrations.CreateCountries do
  use Ecto.Migration

  def change do
    create table(:countries) do
      add :code, :string
      add :name, :string
      add :continent, :string
      add :region, :string
      add :surface_area, :float
      add :indepyear, :integer
      add :population, :integer
      add :life_expectancy, :float
      add :gnp, :float
      add :gnpold, :float
      add :local_name, :text
      add :government_form, :string
      add :head_of_state, :string
      add :capital, :integer
      add :code2, :string
    end
  end
end
