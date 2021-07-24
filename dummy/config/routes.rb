Rails.application.routes.draw do
  get "/tailcov", to: redirect("/tailcov/stories/")
  get "/", to: redirect("/tailcov/stories/index.html")
end
