defmodule Sphinx.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name, :string
    field :teacher?, :boolean, default: false

    has_many :answers, Sphinx.Answers.Answer

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :teacher?])
    |> validate_required([:name, :teacher?])
  end
end
