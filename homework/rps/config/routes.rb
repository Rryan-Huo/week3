Rps::Application.routes.draw do
 get '/rps', :controller =>'rps', :action =>'new', :as =>:new
 get 'rps/rock', :controller =>'rps', :action =>'rock', :as =>:rock
 get 'rps/paper', :controller =>'rps', :action =>'paper', :as =>:paper
 get 'rps/scissors', :controller =>'rps', :action =>'scissors', :as =>:scissors

end
