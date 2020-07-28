defmodule CommercePlatform.Repo.Migrations.AddMembershipTypeToUser do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :membership_type_id, :id
    end
  end
end
