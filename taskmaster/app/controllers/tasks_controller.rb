class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.where(id: params[:id])
    render :show
  end

  def by_name
    @tasks = Task.where(name: params[:name])
    render :index
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_create_params[:task])
    if @task.save
      redirect_to root_path  #ensures that they user can't repost the form
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
    render :new
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_update_params[:task])
    redirect_to root_path
  end

  def delete
    @task = Task.where(id: params[:id])
    @task.first.destroy
    redirect_to root_path

  end

  private

  def task_create_params
    params.permit(task: [:name, :description, :priority])
  end

  def task_update_params
    params.permit(task: [:name, :description, :priority, :completed])
  end


end
