class TasksController < ApplicationController
  def index
    @task_list = Task.order(id: :asc)
  end

  def show
    @task_list = Task.where(id: params[:id])
    render :index
  end

  def new
    @new_task = Task.new
    render :new
  end

  def create
    @new_task = Task.new(task_create_params[:task])
    if @new_task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
    render :edit
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_create_params[:task])
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @task = Task.destroy(params[:id])
    redirect_to root_path
  end

  def mark_completed
    @task = Task.find(params[:id])
    @task.update(completed_on: Time.now.strftime("%B %-d, %Y"))
    redirect_to root_path
  end

  private

  def task_create_params
    params.permit(task: [:task_name, :description, :status, :due_date]) #you must permit parameters when you want to allow access to the user to create new data using the params. The user is ONLY permitted to access these specified parameters.
  end
end
