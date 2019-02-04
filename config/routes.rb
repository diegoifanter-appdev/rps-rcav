Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get("/scissors", { :controller => "game", :action => "user_plays_scissors" })
  get("/rock", { :controller => "game", :action => "user_plays_rock" })
  get("/paper", { :controller => "game", :action => "user_plays_paper" })
  get("/", { :controller => "game", :action => "index" })
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
