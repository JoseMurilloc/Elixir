defmodule ApiWeb.Router do
  use ApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v1", ApiWeb do
    pipe_through :api
    # resources "/users", UserController,  only: [:create, :show, :index]

    get "/users", UserController, :index
    get "/users/:id", UserController, :show

    post "/sign_up", UserController, :create
    post "/sign_in", UserController, :sign_in

  end

  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through [:fetch_session, :protect_from_forgery]
      live_dashboard "/dashboard", metrics: ApiWeb.Telemetry
    end
  end
end
