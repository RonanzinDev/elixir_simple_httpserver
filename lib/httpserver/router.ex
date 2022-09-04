defmodule Httpserver.Router do
  use Plug.Router
  plug(:match)
  plug(:dispatch)

  get "/" do
    send_resp(conn, 200, "Welcome to my api")
  end

  get "/:name" do
    send_resp(conn, 200, "Welcome #{name}")
  end

  # default case for request that match nothing above
  match _ do
    send_resp(conn, 404, "Therer is not route for you specic call")
  end
end
