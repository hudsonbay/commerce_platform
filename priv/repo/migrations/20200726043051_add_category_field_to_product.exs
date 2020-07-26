defmodule CommercePlatform.Repo.Migrations.AddCategoryFieldToProduct do
  use Ecto.Migration

  def change do
    alter table(:products) do
      add :product_category_id, references(:product_categories, on_delete: :delete_all)
    end
  end
end
