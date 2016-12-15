defmodule Repo2Test do
  require Logger
  use ExUnit.Case

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Repo2)
  end

  test "It works for repo2" do
    Repo2.insert(%{bar: 42, baz: "answer"})

    foos = Repo.all(Foo)
    assert(length(foos == 1))
  end

end
