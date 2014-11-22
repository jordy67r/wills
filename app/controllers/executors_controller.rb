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
      if @executor.first
        redirect_to will_executor_first_executor_path(@will, @executor)
      else
        redirect_to new_will_administration_path
      end
    else
      render :new
    end
  end

  def update
    @will = Will.find(params[:will_id])
    if @executor.update(executor_params)
      if params[:commit] == "Proceed"
        redirect_to new_will_administration_path
      else
        if @executor.replacement_forth && @executor.replacement_third && @executor.replacement_second && @executor.replacement_first
          redirect_to will_executor_forth_replacement_executor_path(@will, @executor)
        elsif @executor.replacement_third && @executor.replacement_second && @executor.replacement_first
          redirect_to will_executor_third_replacement_executor_path(@will, @executor)
        elsif @executor.replacement_second && @executor.replacement_first
          redirect_to will_executor_second_replacement_executor_path(@will, @executor)
        elsif @executor.replacement_first
          redirect_to will_executor_first_replacement_executor_path(@will, @executor)
        elsif @executor.forth && @executor.third && @executor.second && @executor.first
          redirect_to will_executor_forth_executor_path(@will, @executor)
        elsif @executor.third && @executor.second && @executor.first
          redirect_to will_executor_third_executor_path(@will, @executor)
        elsif @executor.second && @executor.first
          redirect_to will_executor_second_executor_path(@will, @executor)
        else
          redirect_to will_executor_first_replacement_executor_path(@will, @executor)
        end
      end
    else
      render :edit
    end
  end

  def first_executor
    @will = Will.find(params[:will_id])
    @executor = Executor.find(params[:executor_id])
  end
  def second_executor
    @will = Will.find(params[:will_id])
    @executor = Executor.find(params[:executor_id])
  end
  def third_executor
    @will = Will.find(params[:will_id])
    @executor = Executor.find(params[:executor_id])
  end
  def forth_executor
    @will = Will.find(params[:will_id])
    @executor = Executor.find(params[:executor_id])
  end
  def first_replacement_executor
    @will = Will.find(params[:will_id])
    @executor = Executor.find(params[:executor_id])
  end
  def second_replacement_executor
    @will = Will.find(params[:will_id])
    @executor = Executor.find(params[:executor_id])
  end
  def third_replacement_executor
    @will = Will.find(params[:will_id])
    @executor = Executor.find(params[:executor_id])
  end
  def forth_replacement_executor
    @will = Will.find(params[:will_id])
    @executor = Executor.find(params[:executor_id])
  end


  private
    def set_executor
      @executor = Executor.find(params[:id])
    end

    def executor_params
      params.require(:executor).permit(:notary_express, :first, :second, :third, :forth, :replacement_first, :replacement_second, :replacement_third, :replacement_forth)
    end
end
