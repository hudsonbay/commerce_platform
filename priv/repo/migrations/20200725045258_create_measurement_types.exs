defmodule CommercePlatform.Repo.Migrations.CreateMeasurementTypes do
  use Ecto.Migration

  def change do
    create table(:measurement_types) do
      add :type, :string
    end
  end
end
