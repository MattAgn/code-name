defmodule CodeName.Words.Word do
  use Ecto.Schema
  import Ecto.Changeset

  schema "words" do
    field :word, :string

    timestamps()
  end

  @doc false
  def changeset(word, attrs) do
    word
    |> cast(attrs, [:word])
    |> validate_required([:word])
  end
end
