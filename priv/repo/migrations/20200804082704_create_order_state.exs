defmodule CommercePlatform.Repo.Migrations.CreateOrderState do
  use Ecto.Migration

  def change do
    create table(:order_state) do
      add :name, :string
      add :description, :text

      timestamps()
    end
  end
end
