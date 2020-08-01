defmodule CommercePlatform.Repo.Migrations.AddCategoryFieldToProduct do
  use Ecto.Migration

  def change do
    alter table(:products) do
      add :product_subcategory_id, references(:product_subcategories, on_delete: :delete_all)
    end
  end
end
