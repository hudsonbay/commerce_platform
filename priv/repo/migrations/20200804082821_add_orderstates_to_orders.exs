defmodule CommercePlatform.Repo.Migrations.AddOrderstatesToOrders do
  use Ecto.Migration

  def change do
    alter table(:orders) do
      add :order_state_id, references(:order_state)
    end
  end
end
