defmodule Sphinx.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string, null: false, collate: :nocase
      add :teacher?, :boolean, default: false, null: false

      timestamps()
    end

    create index("users", [:name], unique: true)
  end
end
