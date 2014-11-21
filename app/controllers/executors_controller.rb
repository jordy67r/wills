class ExecutorsController < ApplicationController
  before_action :set_executor, only: [:show, :edit, :update, :destroy]

  def new
    @will = Will.find(params[:will_id])
    @executor = Executor.new
  end

  def edit
  end

  def create
    @will = Will.find(params[:will_id])
    if @will.executor
      @executor = @will.executor
      @executor.update(executor_params)
    else
      @executor = Executor.new(executor_params)
      @executor.will_id = params[:will_id]
    end
    if @executor.save
      if @executor.notary_express
        redirect_to new_will_guardian_path
      else
        redirect_to new_will_administration_path
      end
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
