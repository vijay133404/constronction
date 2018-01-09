class GalleriesController < ApplicationController

  def index
		@galleries = Gallery.all
	end

  def new
   	 @gallery = Gallery.new 
   end

   def create
	    params[:gallery][:image].each do |image|
	   	Gallery.create!(:image => image)
	   end
	   redirect_to galleries_path

   end

end
