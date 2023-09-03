defmodule Sphinx.Repo.Migrations.CreateQuestions do
  use Ecto.Migration

  def change do
    create table(:questions) do
      add :prompt, :text, null: false
      add :answer, :text, null: false
      add :quiz_id, references(:quizzes, on_delete: :delete_all), null: false

      timestamps()
    end

    create index(:questions, [:quiz_id])
  end
end
