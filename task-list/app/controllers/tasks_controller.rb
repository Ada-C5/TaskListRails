class TasksController < ApplicationController

  def index
    @all_tasks = Task.all
  end

  def show
    @selected_task = Task.find(params[:id])
  end

  def add
    @task = Task.new
  end

  def new
    @album = Album.new
  end

  def create
    @task = Task.new(task_create_params[:task])
    if(@task.save)
      redirect_to root_path
    else
      render :add
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
  end

  private

  def task_create_params
    params.permit(task: [:title, :description])
  end
end
