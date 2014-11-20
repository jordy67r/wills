class CashGiftsController < ApplicationController
  before_action :set_cash_gift, only: [:show, :edit, :update, :destroy]

  def new
    @cash_gift = CashGift.new
  end

  def edit
  end

  def create
    @cash_gift = CashGift.new(cash_gift_params)

    if @cash_gift.save
      redirect_to new_will_charitable_donation_path
    else
      render :new
    end
  end

  def update
    if @cash_gift.update(cash_gift_params)
      redirect_to @cash_gift, notice: 'Cash gift was successfully updated.'
    else
      render :edit
    end
  end

  private
    def set_cash_gift
      @cash_gift = CashGift.find(params[:id])
    end

    def cash_gift_params
      params.require(:cash_gift).permit(:shared_to, :amount, :certain_age, :if_dead, :certain_age_if_dead)
    end
end
