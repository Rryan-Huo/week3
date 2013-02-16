Dice::Application.routes.draw do
 get "/dice", :controller =>'dice', :action =>'new',:as =>:new
 get "/dice/roll", :controller =>'dice', :action =>'roll', :as =>:roll
 get "/dice/roll/:id", :controller =>'dice', :action =>'point', :as =>:point
end
