defmodule Sphinx.QuestionsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Sphinx.Questions` context.
  """

  @doc """
  Generate a question.
  """
  def question_fixture(attrs \\ %{}) do
    {:ok, question} =
      attrs
      |> Enum.into(%{
        prompt: "some prompt"
      })
      |> Sphinx.Questions.create_question()

    question
  end
end
