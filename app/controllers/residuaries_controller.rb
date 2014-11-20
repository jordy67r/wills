class ResiduariesController < ApplicationController
  before_action :set_residuary, only: [:show, :edit, :update, :destroy]

  def new
    @residuary = Residuary.new
  end

  def edit
  end

  def create
    @residuary = Residuary.new(residuary_params)

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
