class InquiriesController < ApplicationController
  before_action :set_inquiry, only: [:show, :edit, :update, :destroy]


  def index
    @inquiries = Inquiry.all
    @galleries = Gallery.all
     @inquiry = Inquiry.new
  end
 
  def new 
    @inquiry = Inquiry.new
  end

  def create

    @inquiry = Inquiry.new(inquiry_params)
    respond_to do |format|
      if @inquiry.save
        format.html { redirect_to root_path, notice: 'Sucessfully submitted your Inquiries and soon you wil get in touch by amdin' }
        format.json { render :show, status: :created, location: @inquiry }
      else
        format.html { render :new }
        format.json { render json: @inquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  private
   
    def set_inquiry
      @inquiry = Inquiry.find(params[:id])
    end

    def inquiry_params
      params.require(:inquiry).permit(:name, :email, :phone_number, :inquiry_type, :description)
    end
end
