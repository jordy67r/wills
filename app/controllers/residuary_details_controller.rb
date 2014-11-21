class ResiduaryDetailsController < ApplicationController
  before_action :set_residuary_detail, only: [:show, :edit, :update, :destroy]

  def new
    @will = Will.find(params[:will_id])
    @residuary_detail = ResiduaryDetail.new
  end

  def edit
  end

  def create
    @residuary_detail = ResiduaryDetail.new(residuary_detail_params)
    @residuary_detail.will_id = params[:will_id]
    if @residuary_detail.save
      if params[:commit] == "Add Another"
        redirect_to new_will_residuary_detail_path
      elsif params[:commit] == "Proceed"
        @will = Will.find(params[:will_id])
        redirect_to new_will_residuary_path
      end
    else
      render :new
    end
  end

  def update
    if @residuary_detail.update(residuary_detail_params)
      redirect_to @residuary_detail, notice: 'Residuary detail was successfully updated.'
    else
      render :edit
    end
  end

  private
    def set_residuary_detail
      @residuary_detail = ResiduaryDetail.find(params[:id])
    end

    def residuary_detail_params
      params.require(:residuary_detail).permit(:share, :certain_age, :if_dead, :if_dead_certain_age, :type)
    end
end
