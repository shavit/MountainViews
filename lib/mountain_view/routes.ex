defmodule MountainView.Router do
  import MountainView.Template
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
    |> put_resp_content_type("text/html")
    |> send_resp(200, render("index"))
  end

  get "/grid" do
    data = Poison.encode! %{data:
      MountainView.Grid.Draw.size(20,2)
    }

    conn
    |> put_resp_content_type("application/javascript")
    |> send_resp(200, data)
  end

  match _ do
    conn
    |> put_resp_content_type("application/javascript")
    |> send_resp(404, "{message: \"Not found\"}")
  end
end
