defmodule CommercePlatform.Repo.Migrations.CreateOrderStatus do
  use Ecto.Migration

  def change do
    create table(:order_status) do
      add :name, :string
      add :description, :text

      timestamps()

      create unique_index(:orders, [:order_status])
    end
  end
end
