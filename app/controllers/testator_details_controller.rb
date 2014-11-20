class TestatorDetailsController < ApplicationController
  before_action :set_testator_detail, only: [:show, :edit, :update, :destroy]

  def new
    @testator_detail = TestatorDetail.new
  end

  def edit
  end

  def create
    @testator_detail = TestatorDetail.new(testator_detail_params)
    if @testator_detail.save
      redirect_to new_will_partner_detail_path
    else
      render :new
    end
  end

  def update
    if @testator_detail.update(testator_detail_params)
      redirect_to @testator_detail, notice: 'Testator detail was successfully updated.'
    else
      render :edit
    end
  end

  private
    def set_testator_detail
      @testator_detail = TestatorDetail.find(params[:id])
    end

    def testator_detail_params
      params.require(:testator_detail).permit(:consent, :phone_no, :gender, :dob, :domicile_country, :children, :children_age, :planning_marrige, :effective_post_marrige, :effective_post_death_sans_marrige, :tax_responsibility, :mirror_will)
    end
end
