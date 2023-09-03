defmodule Sphinx.Answers.Answer do
  use Ecto.Schema
  import Ecto.Changeset

  schema "answers" do
    field :answer, :string

    belongs_to :question, Sphinx.Questions.Question
    belongs_to :user, Sphinx.Users.User

    timestamps()
  end

  @doc false
  def changeset(answer, attrs) do
    answer
    |> cast(attrs, [:answer, :question_id, :user_id])
    |> validate_required([:answer, :question_id, :user_id])
  end
end
