class PhotosController < ApplicationController
  def new
   	
  end
	
   def index

   	   @photos=Photo.all
   end
   
   def create
   	   @photo=Photo.new(:title =>params[:title],:url =>params[:url])
   	   @photo.title=params[:title]
   	   @photo.url=params[:url]
   	   @photo.save
   	   flash[:info]="You have added a new photo!"
   	   redirect_to photos_url
   end
   def destroy
   	   @photo=Photo.find_by_id(params[:id])
   	   @photo.destroy
   	   redirect_to photos_url
   	
   end
   def show
       
   	  @photo=Photo.find_by_id(params[:id])
       
   end
   def edit
      @photo=Photo.find_by_id(params[:id])
   end
  
   def edit_photo
    @photo = Photo.find_by_id(params[:id])
    @photo.update_attributes(:title=>params[:new_title])
    @photo.save
    
   flash[:info]="You have edited a photo!"
   redirect_to photos_url

      
   end
   def find
      
   end
   def find_photo
      @photo=Photo.find_by_title params[:title]

   end
   def name
      
   end
   def same_name
      @photos=Photo.find_all_by_title params[:title]
      
   end
   def delete
      
   end
   def delete_photos
      @photos=Photo.find_all_by_title params[:title]
      @photos.each do |photo|
           photo.destroy
        end
      redirect_to photos_url
      
   end

end	