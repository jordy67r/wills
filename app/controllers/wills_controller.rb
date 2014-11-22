class WillsController < ApplicationController
  before_action :set_will, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_user

  def index
    @wills = Will.all
  end

  def show
    @user = @will.user
  end

  def new
    @will = Will.new
  end

  def edit
  end

  def create
    @user = current_user
    @will = @user.wills.build(title: params[:will][:title])
    if @will.save
      redirect_to new_will_testator_detail_path(@will), notice: 'Will was successfully created.'
    else
      render :new
    end
  end

  def update
    if @will.update(will_params)
      redirect_to @will, notice: 'Will was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @will.destroy
    redirect_to wills_url, notice: 'Will was successfully destroyed.'
  end

  private
    def set_will
      @will = Will.find(params[:id])
    end

    def will_params
      params.require(:will).permit(:title)
    end

    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end
end
