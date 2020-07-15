defmodule CommercePlatform.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :first_name, :string
      add :last_name, :string
      add :email, :string
      add :pashword_hash, :string
      add :role, :string

      timestamps()
    end
  end
end
