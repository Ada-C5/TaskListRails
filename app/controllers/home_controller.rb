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

  def show
    @task = Task.find(params[:id])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    @tasks = Task.order(id: :asc)
    render :index
  end
end
