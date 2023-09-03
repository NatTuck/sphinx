defmodule Sphinx.Questions.Question do
  use Ecto.Schema
  import Ecto.Changeset

  schema "questions" do
    field :prompt, :string
    field :answer, :string

    belongs_to :quiz, Sphinx.Quizzes.Quiz
    has_many :answers, Sphinx.Answers.Answer

    timestamps()
  end

  @doc false
  def changeset(question, attrs) do
    question
    |> cast(attrs, [:prompt, :answer, :quiz_id])
    |> validate_required([:prompt, :answer, :quiz_id])
  end
end
