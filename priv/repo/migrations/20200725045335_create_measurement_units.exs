defmodule CommercePlatform.Repo.Migrations.CreateMeasurementUnits do
  use Ecto.Migration

  def change do
    create table(:measurement_units) do
      add :unit_name, :string
      add :type_id, references(:measurement_types, on_delete: :delete_all)
    end

    create index(:measurement_units, [:type_id])
  end
end
