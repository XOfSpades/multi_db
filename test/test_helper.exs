ExUnit.start()

Ecto.Adapters.SQL.Sandbox.mode(Repo1, {:shared, self()})
Ecto.Adapters.SQL.Sandbox.mode(Repo2, {:shared, self()})
