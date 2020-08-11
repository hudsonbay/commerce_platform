defmodule CommercePlatform.Repo.Migrations.CreateShippers do
  use Ecto.Migration

  def change do
    create table(:shippers) do
      add :company_name, :string
      add :description, :string
      add :phone, :string
      add :email, :string
      add :website, :string
      add :picture, :string
      add :country_id, references(:countries, on_delete: :nothing)

      timestamps()
    end

    create index(:shippers, [:country_id])
  end
end
