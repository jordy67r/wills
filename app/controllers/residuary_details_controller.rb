class ResiduaryDetailsController < ApplicationController
  before_action :set_residuary_detail, only: [:show, :edit, :update, :destroy]

  # GET /residuary_details
  def index
    @residuary_details = ResiduaryDetail.all
  end

  # GET /residuary_details/1
  def show
  end

  # GET /residuary_details/new
  def new
    @residuary_detail = ResiduaryDetail.new
  end

  # GET /residuary_details/1/edit
  def edit
  end

  # POST /residuary_details
  def create
    @residuary_detail = ResiduaryDetail.new(residuary_detail_params)

    if @residuary_detail.save
      redirect_to @residuary_detail, notice: 'Residuary detail was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /residuary_details/1
  def update
    if @residuary_detail.update(residuary_detail_params)
      redirect_to @residuary_detail, notice: 'Residuary detail was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /residuary_details/1
  def destroy
    @residuary_detail.destroy
    redirect_to residuary_details_url, notice: 'Residuary detail was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_residuary_detail
      @residuary_detail = ResiduaryDetail.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def residuary_detail_params
      params.require(:residuary_detail).permit(:share, :certain_age, :if_dead, :if_dead_certain_age, :type)
    end
end
