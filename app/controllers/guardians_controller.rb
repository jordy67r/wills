class GuardiansController < ApplicationController
  before_action :set_guardian, only: [:show, :edit, :update, :destroy]

  def new
    @will = Will.find(params[:will_id])
    @guardian = Guardian.new
  end

  def edit
  end

  def create
    @will = Will.find(params[:will_id])
    if @will.guardian
      @guardian = @will.guardian
      @guardian.update(guardian_params)
    else
      @guardian = Guardian.new(guardian_params)
      @guardian.will_id = params[:will_id]
    end
    if @guardian.save
      redirect_to option_will_cash_gifts_path(@will)
    else
      render :new
    end
  end

  def update
    if @guardian.update(guardian_params)
      redirect_to @guardian, notice: 'Guardian was successfully updated.'
    else
      render :edit
    end
  end

  private
    def set_guardian
      @guardian = Guardian.find(params[:id])
    end

    def guardian_params
      params.require(:guardian).permit(:appoint_future_guardians, :appoint_current_guardians, :second_guardian, :third_guardian, :forth_guardian, :replacement_guardian, :replacement_second_guardian, :replacement_third_guardian, :replacement_forth_guardian)
    end
end
