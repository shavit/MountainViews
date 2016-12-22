defmodule MountainView.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  def init(options) do
    options
  end

  def start_link(opts \\ []) do
    {:ok, _} = Plug.Adapters.Cowboy.http MountainView.Router, opts
  end

  get "/" do
    conn
    |> put_resp_content_type("application/javascript")
    |> send_resp(200, "{message: \"It works\"}")
  end

  get "/grid" do
    grid = MountainView.Grid.Draw.size(20,20)

    conn
    |> put_resp_content_type("application/javascript")
    |> send_resp(200, grid)
  end

  match _ do
    conn
    |> put_resp_content_type("application/javascript")
    |> send_resp(404, "{message: \"Not found\"}")
  end
end
