defmodule CommercePlatform.Repo.Migrations.AddUserFieldToOrder do
  use Ecto.Migration

  def change do
    alter table(:orders) do
      add :user_id, references(:orders, on_delete: :nothing)
    end
  end
end
