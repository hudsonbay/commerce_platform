defmodule CommercePlatform.Repo.Migrations.CreateOrderPriorities do
  use Ecto.Migration

  def change do
    create table(:order_priorities) do
      add :name, :string
      add :description, :text

      timestamps()
    end

  end
end
