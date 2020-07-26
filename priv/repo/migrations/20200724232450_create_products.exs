defmodule CommercePlatform.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :price, :float
      add :weight, :float
      add :size, :float
      add :description, :text
      add :thumbnail, :string
      add :image, :string

      timestamps()
    end
  end
end
