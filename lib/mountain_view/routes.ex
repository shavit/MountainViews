defmodule MountainView.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    conn
    |> put_resp_content_type("application/javascript")
    |> send_resp(200, "{status: \"it works\"}")
  end
end
