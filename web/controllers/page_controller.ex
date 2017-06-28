defmodule Vangoghstagram.PageController do
  use Vangoghstagram.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
