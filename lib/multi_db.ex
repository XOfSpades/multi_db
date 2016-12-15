defmodule MultiDb do
  use Application
  require Logger

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Logger.info("Foo app started!!!")

    # Define workers and child supervisors to be supervised
    children = [
      # Starts a worker by calling: Folders.Worker.start_link(arg1, arg2, arg3)
      # worker(Folders.Worker, [arg1, arg2, arg3]),
      supervisor(Repo1, []),
      supervisor(Repo2, []),
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: MultiDb.Supervisor]
    Supervisor.start_link(children, opts)
  end
end

