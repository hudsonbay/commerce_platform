defmodule CommercePlatform.Repo.Migrations.CreateOrderDetails do
  use Ecto.Migration

  def change do
    create table(:order_details) do
      add :quantity, :integer
      add :price, :float
      add :discount, :float
      add :order_id, references(:orders, on_delete: :delete_all)
      add :product_id, references(:products, on_delete: :nothing)

      timestamps()
    end

    create index(:order_details, [:order_id])
    create index(:order_details, [:product_id])
  end
end
