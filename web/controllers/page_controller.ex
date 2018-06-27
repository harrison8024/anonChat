defmodule Anonchat.PageController do
  use Anonchat.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
