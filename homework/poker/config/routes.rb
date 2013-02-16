Poker::Application.routes.draw do
  get"/poker", :controller =>'poker',:action =>'new', :as=>:poker
end
