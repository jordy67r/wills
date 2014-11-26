class ResiduaryDetailsController < ApplicationController
  before_action :set_residuary_detail, only: [:show, :edit, :update, :destroy]

  def new
    @will = Will.find(params[:will_id])
    @residuary_detail = ResiduaryDetail.new
  end

  def edit
  end

  def create
    @residuary_detail = ResiduaryDetail.new(residuary_detail_params)
    @residuary_detail.will_id = params[:will_id]
    @will = Will.find(params[:will_id])
    if @residuary_detail.save
      if @residuary_detail.residuary_type == "I do not wish to specify a beneficiary"
        redirect_to new_will_residuary_path
      elsif @residuary_detail.residuary_type == "Charity"
        redirect_to will_residuary_detail_charity_benificiary_path(@will, @residuary_detail)
      else
        redirect_to will_residuary_detail_people_benificiary_path(@will, @residuary_detail)
      end
    else
      render :new
    end
  end

  def update
    @will = Will.find(params[:will_id])
    if @residuary_detail.update(residuary_detail_params)
      if params[:commit] == "Add Another"
        redirect_to new_will_residuary_detail_path
      elsif params[:commit] == "Proceed"
        redirect_to new_will_residuary_path
      end
    else
      if @residuary_detail.residuary_type == "Individual" || @residuary_detail.residuary_type == "My children"||@residuary_detail.residuary_type == "My grandchildren"
        render :people_benificiary
      elsif @residuary_detail.residuary_type == "Charity"
        render :charity_benificiary
      else
        render :edit
      end
    end
  end

  def people_benificiary
    @will = Will.find(params[:will_id])
    @residuary_detail = ResiduaryDetail.find(params[:residuary_detail_id])
    @residuary_detail.build_individual_residuary_general_detail
  end

  def charity_benificiary
    @will = Will.find(params[:will_id])
    @residuary_detail = ResiduaryDetail.find(params[:residuary_detail_id])
    @residuary_detail.build_charity_residuary_general_detail
  end

  private
    def set_residuary_detail
      @residuary_detail = ResiduaryDetail.find(params[:id])
    end

    def residuary_detail_params
      params.require(:residuary_detail).permit(:share, :certain_age, :if_dead, :if_dead_certain_age, :residuary_type,
        individual_residuary_general_detail_attributes: [:id, :will_id, :relationship, :first_name, :middle_name, :surname, :address_one, :address_two, :city, :county, :postcode, :country], 
        charity_residuary_general_detail_attributes: [:id, :will_id, :relationship, :first_name, :middle_name, :surname, :address_one, :address_two, :city, :county, :postcode, :country, :name, :registered_charity_number])
    end
end
