defmodule CommercePlatform.Repo.Migrations.AddOrderStatussToOrders do
  use Ecto.Migration

  def change do
    alter table(:orders) do
      add :order_status_id, references(:order_status, on_delete: :nothing), null: false
    end
  end
end
