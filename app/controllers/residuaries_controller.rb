class ResiduariesController < ApplicationController
  before_action :set_residuary, only: [:show, :edit, :update, :destroy]

  def new
    @will = Will.find(params[:will_id])
    @residuary = Residuary.new
  end

  def edit
  end

  def create
    @will = Will.find(params[:will_id])
    if @will.residuary
      @residuary = @will.residuary
      @residuary.update(residuary_params)
    else
      @residuary = Residuary.new(residuary_params)
      @residuary.will_id = params[:will_id]
    end
    if @residuary.save
      redirect_to new_will_request_path
    else
      render :new
    end
  end

  def update
    if @residuary.update(residuary_params)
      redirect_to @residuary, notice: 'Residuary was successfully updated.'
    else
      render :edit
    end
  end

  private
    def set_residuary
      @residuary = Residuary.find(params[:id])
    end

    def residuary_params
      params.require(:residuary).permit(:amount_allowed_to_distribute)
    end
end
