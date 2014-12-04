class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  def new
    @will = Will.find(params[:will_id])
    @request = Request.new
  end

  def edit
  end

  def create
    @will = Will.find(params[:will_id])
    if @will.request
      @request = @will.request
      @request.update(request_params)
    else
      @request = Request.new(request_params)
      @request.will_id = params[:will_id]
    end
    if @request.save
      @will.update_attributes(complete:true)
      redirect_to @will
    else
      render :new
    end
  end

  def update
    if @request.update(request_params)
      redirect_to @request, notice: 'Request was successfully updated.'
    else
      render :edit
    end
  end

  private
    def set_request
      @request = Request.find(params[:id])
    end

    def request_params
      params.require(:request).permit(:requests, :specific)
    end
end
