defmodule PhoenixCore.Router do
  use PhoenixCore.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhoenixCore do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  resources "/users", UserController, except: [:new, :edit]
  # Other scopes may use custom stacks.
  # scope "/api", PhoenixCore do
  #   pipe_through :api
  # end
end
