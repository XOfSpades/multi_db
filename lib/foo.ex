defmodule Foo do
  use Ecto.Schema
  alias Ecto.Changeset

  schema "foos" do
    field :bar,       :integer
    field :baz,       :string

    timestamps
  end
end
