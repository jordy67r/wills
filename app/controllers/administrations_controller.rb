class AdministrationsController < ApplicationController
  before_action :set_administration, only: [:show, :edit, :update, :destroy]

  def new
    @administration = Administration.new
  end

  def edit
  end

  def create
    @administration = Administration.new(administration_params)

    if @administration.save
      redirect_to new_will_guardian_path
    else
      render :new
    end
  end

  def update
    if @administration.update(administration_params)
      redirect_to @administration, notice: 'Administration was successfully updated.'
    else
      render :edit
    end
  end

  private
    def set_administration
      @administration = Administration.find(params[:id])
    end

    def administration_params
      params.require(:administration).permit(:accept_admin, :expanded_powers, :borrow_powers, :appoint_admin_powers, :buy_sell_powers, :liability_powers)
    end
end
