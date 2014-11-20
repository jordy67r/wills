class WillsController < ApplicationController
  before_action :set_will, only: [:show, :edit, :update, :destroy]

  # GET /wills
  def index
    @wills = Will.all
  end

  # GET /wills/1
  def show
  end

  # GET /wills/new
  def new
    @will = Will.new
  end

  # GET /wills/1/edit
  def edit
  end

  # POST /wills
  def create
    @will = Will.new(will_params)

    if @will.save
      redirect_to new_will_testator_detail_path(@will), notice: 'Will was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /wills/1
  def update
    if @will.update(will_params)
      redirect_to @will, notice: 'Will was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /wills/1
  def destroy
    @will.destroy
    redirect_to wills_url, notice: 'Will was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_will
      @will = Will.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def will_params
      params.require(:will).permit(:title, :user_id)
    end
end
