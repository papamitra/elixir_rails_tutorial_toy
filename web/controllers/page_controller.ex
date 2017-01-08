defmodule ToyApp.PageController do
  use ToyApp.Web, :controller

  def index(conn, _params) do
    conn |> put_status(200) |> html("Hello, world!")
  end
end
