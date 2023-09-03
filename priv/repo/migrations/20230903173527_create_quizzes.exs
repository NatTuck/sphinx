defmodule Sphinx.Repo.Migrations.CreateQuizzes do
  use Ecto.Migration

  def change do
    create table(:quizzes) do
      add :name, :string, null: false

      timestamps()
    end
  end
end
