class InquiryTypesController < ApplicationController
  before_action :set_inquiry_type, only: [:show, :edit, :update, :destroy]

  # GET /inquiry_types
  # GET /inquiry_types.json
  def index
    @inquiry_types = InquiryType.all
  end

  # GET /inquiry_types/1
  # GET /inquiry_types/1.json
  def show
  end

  # GET /inquiry_types/new
  def new
    @inquiry_type = InquiryType.new
  end

  # GET /inquiry_types/1/edit
  def edit
  end

  # POST /inquiry_types
  # POST /inquiry_types.json
  def create
    @inquiry_type = InquiryType.new(inquiry_type_params)

    respond_to do |format|
      if @inquiry_type.save
        format.html { redirect_to @inquiry_type, notice: 'Inquiry type was successfully created.' }
        format.json { render :show, status: :created, location: @inquiry_type }
      else
        format.html { render :new }
        format.json { render json: @inquiry_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inquiry_types/1
  # PATCH/PUT /inquiry_types/1.json
  def update
    respond_to do |format|
      if @inquiry_type.update(inquiry_type_params)
        format.html { redirect_to @inquiry_type, notice: 'Inquiry type was successfully updated.' }
        format.json { render :show, status: :ok, location: @inquiry_type }
      else
        format.html { render :edit }
        format.json { render json: @inquiry_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inquiry_types/1
  # DELETE /inquiry_types/1.json
  def destroy
    @inquiry_type.destroy
    respond_to do |format|
      format.html { redirect_to inquiry_types_url, notice: 'Inquiry type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inquiry_type
      @inquiry_type = InquiryType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inquiry_type_params
      params.require(:inquiry_type).permit(:name)
    end
end
