defmodule CommercePlatform.Repo.Migrations.AddNewFieldsToProduct do
  use Ecto.Migration

  def change do
    alter table(:products) do
      add :stock, :integer
    end
  end
end
