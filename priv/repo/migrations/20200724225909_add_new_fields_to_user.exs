defmodule CommercePlatform.Repo.Migrations.AddNewaddsToUser do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :phone, :string
      add :shipping_address, :string
      add :shipping_city, :string
      add :shipping_region, :string
      add :shipping_state, :string
      add :shipping_postal_code, :string
      add :billing_address, :string
      add :billing_city, :string
      add :billing_region, :string
      add :billing_state, :string
      add :billing_postal_code, :string
    end
  end
end
