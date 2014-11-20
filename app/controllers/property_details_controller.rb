class PropertyDetailsController < ApplicationController
  before_action :set_property_detail, only: [:show, :edit, :update, :destroy]

  # GET /property_details
  def index
    @property_details = PropertyDetail.all
  end

  # GET /property_details/1
  def show
  end

  # GET /property_details/new
  def new
    @property_detail = PropertyDetail.new
  end

  # GET /property_details/1/edit
  def edit
  end

  # POST /property_details
  def create
    @property_detail = PropertyDetail.new(property_detail_params)

    if @property_detail.save
      redirect_to @property_detail, notice: 'Property detail was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /property_details/1
  def update
    if @property_detail.update(property_detail_params)
      redirect_to @property_detail, notice: 'Property detail was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /property_details/1
  def destroy
    @property_detail.destroy
    redirect_to property_details_url, notice: 'Property detail was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_detail
      @property_detail = PropertyDetail.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def property_detail_params
      params.require(:property_detail).permit(:will_id, :land_reg_number, :address_one, :address_two, :city, :county, :country, :postcode)
    end
end
