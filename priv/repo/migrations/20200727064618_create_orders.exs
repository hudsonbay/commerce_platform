defmodule CommercePlatform.Repo.Migrations.CreateOrders do
  use Ecto.Migration

  def change do
    create table(:orders) do
      add :number, :string
      add :date_issued, :timestamptz
      add :required_date, :timestamptz
      add :paid, :boolean, default: false, null: false

      timestamps(type: :timestamptz)
    end
  end
end
