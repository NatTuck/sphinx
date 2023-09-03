defmodule Sphinx.AnswersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Sphinx.Answers` context.
  """

  @doc """
  Generate a answer.
  """
  def answer_fixture(attrs \\ %{}) do
    {:ok, answer} =
      attrs
      |> Enum.into(%{
        answer: "some answer"
      })
      |> Sphinx.Answers.create_answer()

    answer
  end
end
