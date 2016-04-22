class HomeController < ApplicationController
  def index
    @tasks = Task.order(id: :asc)
  end

  def by_task
   @task = Task.where(id: params[:id])
   render :show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_create_params[:task])
    if (@task.save)
      redirect_to root_path
    else
      render :new
    end
  end

  def task_create_params
    params.permit(task: [:name, :description])
  end

  def task_edit_params
    params.permit(task: [:name, :description])
  end

  def show
    @task = Task.find(params[:id])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    @tasks = Task.order(id: :asc)
    render :index
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_edit_params[:task])
    render :show
  end

  def complete
    @task = Task.find(params[:id])
    @task.completed_at = Time.now
    @task.save
    redirect_to root_path
  end
end
