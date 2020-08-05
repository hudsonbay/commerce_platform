defmodule CommercePlatform.Repo.Migrations.CreateMembershipTypes do
  use Ecto.Migration

  def change do
    create table(:membership_types) do
      add :name, :string
      add :description, :text
      add :card_img, :string

      timestamps()
    end
  end
end
