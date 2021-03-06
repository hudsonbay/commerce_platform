defmodule CommercePlatform.Repo.Migrations.CreateProductSubcategories do
  use Ecto.Migration

  def change do
    create table(:product_subcategories) do
      add :name, :string
      add :description, :string
      add :product_category_id, references(:product_categories, on_delete: :delete_all)

      timestamps()
    end

    create index(:product_subcategories, [:product_category_id])
  end
end
