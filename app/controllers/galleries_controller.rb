class GalleriesController < ApplicationController

	def index
        @galleries = Gallery.all
        @gallery = Gallery.new
	end

	def create
	   @gallery = Gallery.new(image: params[:file]) 
	   if @gallery.save!
	         render json: { message: "success", fileID: @gallery }, :status => 200
	           
	     end
	end
	 
end
