class CharitableDonationsController < ApplicationController
  before_action :set_charitable_donation, only: [:show, :edit, :update, :destroy]

  def new
    @will = Will.find(params[:will_id])
    @charitable_donation = CharitableDonation.new
  end

  def edit
    @will = Will.find(params[:will_id])
  end

  def create
    @will = Will.find(params[:will_id])
    @charitable_donation = CharitableDonation.new(charitable_donation_params)
    @charitable_donation.will_id = params[:will_id]
    if @charitable_donation.save
      if params[:commit] == "Add Another"
        redirect_to new_will_charitable_donation_path
      elsif params[:commit] == "Proceed"
        @will = Will.find(params[:will_id])
        redirect_to option_will_properties_path(@will)
      end
    else
      render :new
    end
  end

  def update
    @will = Will.find(params[:will_id])
    if @charitable_donation.update(charitable_donation_params)
      redirect_to @charitable_donation, notice: 'Charitable donation was successfully updated.'
    else
      render :edit
    end
  end

  def option
    @will = Will.find(params[:will_id])
  end

  private
    def set_charitable_donation
      @charitable_donation = CharitableDonation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def charitable_donation_params
      params.require(:charitable_donation).permit(:charity_id, :amount, :instruction, :allow_alternate, :popular_charity, :popular_charity_name, :name, :registered_charity_number, :address_one, :address_two, :city, :county, :country)
    end
end
