class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  def new
    @will = Will.find(params[:will_id])
    @property = Property.new
  end

  def edit
    @will = Will.find(params[:will_id])
  end

  def create
    @will = Will.find(params[:will_id])
    @property = Property.new(property_params)
    @property.will_id = params[:will_id]
    if @property.save
      redirect_to will_property_benificiaries_path(@will, @property)
    else
      render :new
    end
  end

  def update
    @will = Will.find(params[:will_id])
    if @property.update(property_params)
      if params[:commit] == "Add Another"
        redirect_to new_will_property_path
      elsif params[:commit] == "Proceed"
        @will = Will.find(params[:will_id])
        redirect_to option_will_personal_gifts_path(@will)
      end
    else
      if params[:action] == "edit"
        render :edit
      else
        render :benificiaries
      end
    end
  end

  def option
    @will = Will.find(params[:will_id])
  end

  def benificiaries
    @will = Will.find(params[:will_id])
    @property = Property.find(params[:property_id])
    @property.build_benificiary_general_details
    @property.build_second_benificiary_general_details if @property.recipient_no > 1
    @property.build_third_benificiary_general_details if @property.recipient_no > 2
    @property.build_forth_benificiary_general_details if @property.recipient_no > 3
    @property.build_replacement_benificiary_general_details
    @property.build_second_replacement_benificiary_general_details if @property.life_beneficiary_no > 1
    @property.build_third_replacement_benificiary_general_details if @property.life_beneficiary_no > 2
    @property.build_forth_replacement_benificiary_general_details if @property.life_beneficiary_no > 3
  end

  private
    def set_property
      @property = Property.find(params[:id])
    end

    def property_params
      params.require(:property).permit(:sole_residence, :recipient_no, :joint_or_common, :responsible_for_charges, :as_cash_if_sold, :held_in_trust, :life_beneficiary_no, :will_id, :land_reg_number, :address_one, :address_two, :city, :county, :country, :postcode,
        benificiary_general_details_attributes: [:id, :will_id, :relationship, :first_name, :middle_name, :surname, :address_one, :address_two, :city, :county, :postcode, :country],
        second_benificiary_general_details_attributes: [:id, :will_id, :relationship, :first_name, :middle_name, :surname, :address_one, :address_two, :city, :county, :postcode, :country],
        third_benificiary_general_details_attributes: [:id, :will_id, :relationship, :first_name, :middle_name, :surname, :address_one, :address_two, :city, :county, :postcode, :country],
        forth_benificiary_general_details_attributes: [:id, :will_id, :relationship, :first_name, :middle_name, :surname, :address_one, :address_two, :city, :county, :postcode, :country],
        replacement_benificiary_general_details_attributes: [:id, :will_id, :relationship, :first_name, :middle_name, :surname, :address_one, :address_two, :city, :county, :postcode, :country],
        second_replacement_benificiary_general_details_attributes: [:id, :will_id, :relationship, :first_name, :middle_name, :surname, :address_one, :address_two, :city, :county, :postcode, :country],
        third_replacement_benificiary_general_details_attributes: [:id, :will_id, :relationship, :first_name, :middle_name, :surname, :address_one, :address_two, :city, :county, :postcode, :country],
        forth_replacement_benificiary_general_details_attributes: [:id, :will_id, :relationship, :first_name, :middle_name, :surname, :address_one, :address_two, :city, :county, :postcode, :country])
    end
end
