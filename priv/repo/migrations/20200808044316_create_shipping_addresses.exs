defmodule CommercePlatform.Repo.Migrations.CreateShippingAddresses do
  use Ecto.Migration

  def change do
    create table(:shipping_addresses) do
      add :address, :text
      add :postal_code, :string
      add :phone, :string
      add :country_id, references(:countries, on_delete: :nothing), null: false
      add :user_id, references(:users, on_delete: :delete_all), null: false

      timestamps()
    end

    create index(:shipping_addresses, [:country_id, :user_id])
  end
end
