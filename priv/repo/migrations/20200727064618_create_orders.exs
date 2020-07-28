defmodule CommercePlatform.Repo.Migrations.CreateOrders do
  use Ecto.Migration

  def change do
    create table(:orders) do
      add :number, :string
      add :date_issued, :timestamptz
      add :delivery_date, :timestamptz, null: true
      add :paid, :boolean, default: false, null: false
      add :shipper_id, references(:shippers, on_delete: :nothing)
      add :user_id, references(:orders, on_delete: :nothing)

      timestamps(type: :timestamptz)
    end
  end
end
