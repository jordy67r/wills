class CharitableDonationsController < ApplicationController
  before_action :set_charitable_donation, only: [:show, :edit, :update, :destroy]

  def new
    @charitable_donation = CharitableDonation.new
  end

  def edit
  end

  def create
    @charitable_donation = CharitableDonation.new(charitable_donation_params)

    if @charitable_donation.save
      redirect_to new_will_property_path
    else
      render :new
    end
  end

  def update
    if @charitable_donation.update(charitable_donation_params)
      redirect_to @charitable_donation, notice: 'Charitable donation was successfully updated.'
    else
      render :edit
    end
  end

  private
    def set_charitable_donation
      @charitable_donation = CharitableDonation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def charitable_donation_params
      params.require(:charitable_donation).permit(:charity_id, :amount, :instruction, :allow_alternate)
    end
end
