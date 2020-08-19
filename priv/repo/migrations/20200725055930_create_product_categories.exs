defmodule CommercePlatform.Repo.Migrations.CreateProductCategories do
  use Ecto.Migration

  def change do
    create table(:product_categories) do
      add :name, :string
      add :description, :text

      timestamps()
    end

    create unique_index(:product_categories, [:name])
  end
end
