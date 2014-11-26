class PersonalGiftsController < ApplicationController
  before_action :set_personal_gift, only: [:show, :edit, :update, :destroy]

  def new
    @will = Will.find(params[:will_id])
    @personal_gift = PersonalGift.new
  end

  def edit
  end

  def create
    @will = Will.find(params[:will_id])
    @personal_gift = PersonalGift.new(personal_gift_params)
    @personal_gift.will_id = params[:will_id]
    if @personal_gift.save
      if params[:commit] == "Add Another"
        redirect_to new_will_personal_gift_path
      elsif params[:commit] == "Proceed"
        @will = Will.find(params[:will_id])
        redirect_to new_will_residuary_detail_path
      end
    else
      render :new
    end
  end

  def update
    if @personal_gift.update(personal_gift_params)
      redirect_to @personal_gift, notice: 'Personal gift was successfully updated.'
    else
      render :edit
    end
  end

  private
    def set_personal_gift
      @personal_gift = PersonalGift.find(params[:id])
    end

    def personal_gift_params
      params.require(:personal_gift).permit(:description, :as_cash_if_sold, :relationship, :first_name, :middle_name, :surname, :address_one, :address_two, :city, :county, :postcode, :country)
    end
end
