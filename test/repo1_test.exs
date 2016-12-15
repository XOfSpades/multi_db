defmodule Repo1Test do
  require Logger
  use ExUnit.Case

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Repo1)
  end

  test "It works for repo1" do
    Repo1.insert(%{bar: 42, baz: "answer"})

    foos = Repo.all(Foo)
    assert(length(foos == 1))
  end
end
