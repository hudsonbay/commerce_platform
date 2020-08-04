defmodule CommercePlatform.Repo.Migrations.AddCountriesToShippers do
  use Ecto.Migration

  def change do
    alter table(:shippers) do
      add :country_id, references(:countries, on_delete: :nothing)
    end

    create index(:shippers, [:country_id])
  end
end
