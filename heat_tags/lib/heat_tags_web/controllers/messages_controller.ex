defmodule HeadTagsWeb.MessagesController do
  user HeatTagsWeb, :controllers
  def create(conn, params) do
    IO.inspect(params)

    conn
    |> text("recebi a requisição")
  end
end
