defmodule PhoenixCore.PageController do
  use PhoenixCore.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
