defmodule CommercePlatform.Repo.Migrations.AddPriorityToOrders do
  use Ecto.Migration

  def change do
    alter table(:orders) do
      add :order_priority_id, references(:order_priorities, on_delete: :nothing), null: false
    end
  end
end
