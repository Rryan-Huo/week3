PhotosApp::Application.routes.draw do
   get '/photos', :controller =>'photos', :action =>'index', :as =>:photos
   get '/photos/new', :controller =>'photos', :action =>'new', :as =>:new_photo
   post '/photos', :controller =>'photos', :action =>'create'
   get '/photos/delete', :controller =>'photos', :action =>'delete', :as =>:delete
   get '/photos/:id/edit', :controller=>'photos', :action =>'edit', :as =>:edit_photo
   get '/photos/name', :controller =>'photos', :action => 'name', :as =>:name
   get '/photos/find', :controller =>'photos', :action =>'find', :as =>:find_photo
   delete '/photos/:id', :controller =>'photos', :action =>'destroy'
   get '/photos/:id', :controller =>'photos', :action =>'show',:as =>:photo
   post '/photos/delete', :controller=>'photos', :action=>'delete_photos'
   post '/photos/:id/edit', :controller=>'photos', :action=>'edit_photo'
   post '/photos/name', :controller =>'photos', :action =>'same_name'
   post '/photos/:id', :controller =>'photos', :action=>'find_photo'
   
end
