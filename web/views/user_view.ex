defmodule PhoenixCore.UserView do
  use PhoenixCore.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, PhoenixCore.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, PhoenixCore.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      name: user.name}
  end
end
