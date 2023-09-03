defmodule SphinxWeb.QuestionHTML do
  use SphinxWeb, :html

  embed_templates "question_html/*"

  @doc """
  Renders a question form.
  """
  attr :changeset, Ecto.Changeset, required: true
  attr :action, :string, required: true

  def question_form(assigns)
end
