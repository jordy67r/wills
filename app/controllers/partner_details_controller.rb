class PartnerDetailsController < ApplicationController
  before_action :set_partner_detail, only: [:show, :edit, :update, :destroy]

  def new
    @will = Will.find(params[:will_id])
    @partner_detail = PartnerDetail.new
  end

  def edit
  end

  def create
    @will = Will.find(params[:will_id])
    if @will.partner_detail
      @partner_detail = @will.partner_detail
      @partner_detail.update(partner_detail_params)
    else
      @partner_detail = PartnerDetail.new(partner_detail_params)
      @partner_detail.will_id = params[:will_id]
    end
    if @partner_detail.save
      redirect_to new_will_funeral_path
    else
      render :new
    end
  end

  def update
    if @partner_detail.update(partner_detail_params)
      redirect_to @partner_detail, notice: 'Partner detail was successfully updated.'
    else
      render :edit
    end
  end

  private
    def set_partner_detail
      @partner_detail = PartnerDetail.find(params[:id])
    end

    def partner_detail_params
      params.require(:partner_detail).permit(:phone_no, :gender, :dob, :domicile_country)
    end
end
