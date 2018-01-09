class SlidersController < ApplicationController

  def create
      params[:slider][:image].each do |image|
     	Slider.create!(:image => image)
     end
     
  end

end
