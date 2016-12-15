use Mix.Config

config :logger,
  level: :debug,
  truncate: 4096

config :multi_db, Repo1,
  adapter: Ecto.Adapters.Postgres,
  database: "multi_db_test",
  username: "my_user1",
  password: "dev#dev123",
  hostname: "multi_db_psql1",
  port: "5432",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

config :multi_db, Repo2,
  adapter: Ecto.Adapters.Postgres,
  database: "multi_db_test",
  username: "my_user2",
  password: "dev#dev456",
  hostname: "multi_db_psql2",
  port: "5431",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10
