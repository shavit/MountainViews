defmodule MountainView do
  import Plug.Conn

  def init([]), do: false
  def call(conn, _opts) do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Mountain views")
  end

  def start(_type, _args) do
    import Supervisor.Spec, warn: false
    port = Application.get_env(:mountain_view, :cowboy_port, 4000)
    children = [
      Plug.Adapters.Cowboy.child_spec(:http,
        MountainView,
        [],
        port: port)
    ]
    opts = [strategy: :one_for_one, name: MountainView.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def homepage(conn, _opts) do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Mountain View")
  end
end
