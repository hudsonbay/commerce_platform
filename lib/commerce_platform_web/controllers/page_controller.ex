defmodule CommercePlatformWeb.PageController do
  use CommercePlatformWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
