defmodule CommercePlatform.Repo.Migrations.CreatePermissions do
  use Ecto.Migration

  def change do
    create table(:permissions) do
      add :name, :string
      add :action, :string
      add :role_id, references(:roles, on_delete: :delete_all)

      timestamps()
    end

    create index(:permissions, [:role_id])
  end
end
