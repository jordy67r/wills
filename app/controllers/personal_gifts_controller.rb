class PersonalGiftsController < ApplicationController
  before_action :set_personal_gift, only: [:show, :edit, :update, :destroy]

  def new
    @personal_gift = PersonalGift.new
  end

  def edit
  end

  def create
    @personal_gift = PersonalGift.new(personal_gift_params)

    if @personal_gift.save
      redirect_to new_will_residuary_path
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
      params.require(:personal_gift).permit(:description, :as_cash_if_sold)
    end
end
