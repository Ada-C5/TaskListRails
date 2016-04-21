class TasksController < ApplicationController
  def index
    @tasks = Task.order(:id)
  end

  def show
    @single_task = Task.find(params[:id])
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

  # update a specific task (to complete per wave 2)
  def update
    @single_task = Task.find(params[:id])

    @single_task.completed_at = DateTime.now
    @single_task.complete = true
    @single_task.updated_at = DateTime.now
    # method or need a private method?

    if @single_task.save
      redirect_to root_path
    else
      render :new # not sure what this will render - would like to change
    end

  end

  # delete a task
  def destroy
    @single_task = Task.delete(params[:id]) # need a private method?
    redirect_to root_path
  end

  private

  def task_create_params
    params.permit(task: [:title, :description])
  end

  # def task_destroy_params
  #   params.permit(id:)
  # end

end
