defmodule MountainView do
  import Plug.Conn

  def init(options) do
    options
  end

  def call(conn, _opts) do
    conn
    |> put_resp_content_type("application/javascript")
    |> send_resp(200, "{status: \"it works\"}")
  end

  def start(_type, _args) do
    import Supervisor.Spec, warn: false
    # port = Application.get_env(:mountain_view, :cowboy_port)

    children = [
      Plug.Adapters.Cowboy.child_spec(:http,
        MountainView.Router,
        [],
        port: 9000)
    ]
    opts = [strategy: :one_for_one, name: MountainView.Supervisor]
    Supervisor.start_link(children, opts)
  end

end
