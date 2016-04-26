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

  def edit
    @single_task = Task.find(params[:id])
  end

  # update a specific task (both for complete and generic edit)
  def update
    @single_task = Task.update(params[:id], task_edit_params[:task])

    if @single_task.save
      redirect_to root_path
    else
      render :edit
    end

  end

  # delete a task
  def destroy
    @single_task = Task.delete(params[:id]) # need a private method?
    redirect_to root_path
  end

  private

  def task_create_params
    params.permit(task: [:title, :description, :person_id])
  end

  def task_edit_params
    params.permit(task: [:title, :description, :completed_at, :complete, :updated_at, :person_id])
  end

  # def task_destroy_params
  #   params.permit(id:)
  # end

end
