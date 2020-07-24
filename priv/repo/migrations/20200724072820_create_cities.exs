defmodule CommercePlatform.Repo.Migrations.CreateCities do
  use Ecto.Migration

  def change do
    create table(:cities) do
      add :name, :string
      add :countrycode, :string
      add :district, :text
      add :population, :integer
    end
  end
end
