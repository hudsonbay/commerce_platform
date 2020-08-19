defmodule CommercePlatform.Repo.Migrations.AddMembershipTypeToUser do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :membership_type_id, references(:membership_types, on_delete: :nothing), null: false
    end

    create index(:users, [:membership_type_id])
  end
end
