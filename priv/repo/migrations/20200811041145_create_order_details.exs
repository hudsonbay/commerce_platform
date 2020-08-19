defmodule CommercePlatform.Repo.Migrations.CreateOrderDetails do
  use Ecto.Migration

  def change do
    create table(:order_details) do
      add :discount, :float
      add :unit_price, :float
      add :quantity, :integer
      add :total, :float
      add :order_id, references(:orders, on_delete: :delete_all), null: false
      add :product_id, references(:products, on_delete: :nothing), null: false

      timestamps()
    end

    create index(:order_details, [:order_id, :product_id])
  end
end
