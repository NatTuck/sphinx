defmodule SphinxWeb.QuizHTML do
  use SphinxWeb, :html

  import SphinxWeb.QuestionHTML, only: [question_form: 1]

  embed_templates "quiz_html/*"

  @doc """
  Renders a quiz form.
  """
  attr :changeset, Ecto.Changeset, required: true
  attr :action, :string, required: true

  def quiz_form(assigns)

  def new_answer(question, user) do
    sp = %Sphinx.Answers.Answer{question_id: question.id, user_id: user.id}
    Sphinx.Answers.change_answer(sp)
  end
end
