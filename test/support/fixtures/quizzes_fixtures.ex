defmodule Sphinx.QuizzesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Sphinx.Quizzes` context.
  """

  @doc """
  Generate a quiz.
  """
  def quiz_fixture(attrs \\ %{}) do
    {:ok, quiz} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> Sphinx.Quizzes.create_quiz()

    quiz
  end
end
