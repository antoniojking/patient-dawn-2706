Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/competitions", to: "competitions#index"
  get "/competitions/:competition_id", to: "competitions#show"

  get "/competitions/:competition_id/teams/update", to: "competition_teams#update"
end
