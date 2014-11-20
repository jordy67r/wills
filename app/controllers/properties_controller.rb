class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  def new
    @property = Property.new
  end

  def edit
  end

  def create
    @property = Property.new(property_params)

    if @property.save
      redirect_to new_will_personal_gift_path
    else
      render :new
    end
  end

  def update
    if @property.update(property_params)
      redirect_to @property, notice: 'Property was successfully updated.'
    else
      render :edit
    end
  end

  private
    def set_property
      @property = Property.find(params[:id])
    end

    def property_params
      params.require(:property).permit(:sole_residence, :recipient_no, :joint_or_common, :responsible_for_charges, :as_cash_if_sold, :held_in_trust, :life_beneficiary_no)
    end
end
