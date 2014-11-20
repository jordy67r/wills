class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  def new
    @request = Request.new
  end

  def edit
  end

  def create
    @request = Request.new(request_params)

    if @request.save
      redirect_to will_path(params[:will_id])
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
