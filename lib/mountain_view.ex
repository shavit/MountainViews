defmodule MountainView do
  import Plug.Conn

  def init([]), do: false
  def call(conn, _opts), do: conn

  def homepage(conn, _opts) do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Mountain View")
  end
end
