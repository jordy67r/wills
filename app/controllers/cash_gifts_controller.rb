class CashGiftsController < ApplicationController
  before_action :set_cash_gift, only: [:show, :edit, :update, :destroy]

  def new
    @will = Will.find(params[:will_id])
    @cash_gift = CashGift.new
  end

  def edit
    @will = Will.find(params[:will_id])
  end

  def create
    @will = Will.find(params[:will_id])
    @cash_gift = CashGift.new(cash_gift_params)
    @cash_gift.will_id = params[:will_id]
    if @cash_gift.save
      if params[:commit] == "Add Another"
        redirect_to new_will_cash_gift_path
      elsif params[:commit] == "Proceed"
        redirect_to option_will_charitable_donations_path(@will)
      end
    else
      render :new
    end
  end

  def option
    @will = Will.find(params[:will_id])
  end

  def update
    @will = Will.find(params[:will_id])
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
      params.require(:cash_gift).permit(:shared_to, :amount, :certain_age, :if_dead, :certain_age_if_dead, :relationship, :first_name, :middle_name, :surname, :address_one, :address_two, :city, :county, :postcode, :country)
    end
end
