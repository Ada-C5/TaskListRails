class TasksController < ApplicationController
  def index
    @tasks = Task.order(:id)
  end

  def show
    @single_task = Task.where(id: params[:id]).first
  end

  def new
    # give them a shell and invite them to fill out the data.  Allows introspection into the object in the view!
    @single_task = Task.new
  end

  def create
    @single_task = Task.new(task_create_params[:task])

    if @single_task.save
      redirect_to root_path
    else
      render :new
    end

  end

  def destroy
    @single_task = Task.delete(params[:id])
    redirect_to root_path
  end

  private

  def task_create_params
    params.permit(task: [:title, :description, :created_at, :updated_at])
  end

end
