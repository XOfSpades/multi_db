defmodule Repo2.Migrations.CreateFooTable do
  use Ecto.Migration

  def change do
    create table(:foos) do
      add :bar, :integer
      add :baz, :string

      timestamps
    end
  end
end
