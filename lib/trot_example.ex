defmodule TrotExample do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      Plug.Adapters.Cowboy.child_spec(:http, TrotExample.Router, [], [port: 4000]),
    ]

    opts = [strategy: :one_for_one, name: TrotExample.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
