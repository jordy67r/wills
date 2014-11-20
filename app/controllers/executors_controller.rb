class ExecutorsController < ApplicationController
  before_action :set_executor, only: [:show, :edit, :update, :destroy]

  def new
    @executor = Executor.new
  end

  def edit
  end

  def create
    @executor = Executor.new(executor_params)

    if @executor.save
      redirect_to new_will_administration_path
    else
      render :new
    end
  end

  def update
    if @executor.update(executor_params)
      redirect_to @executor, notice: 'Executor was successfully updated.'
    else
      render :edit
    end
  end

  private
    def set_executor
      @executor = Executor.find(params[:id])
    end

    def executor_params
      params.require(:executor).permit(:notary_express, :first, :second, :third, :forth, :replacement_first, :replacement_second, :replacement_third, :replacement_forth)
    end
end
