class TasksController < ApplicationController
  def index
    @tasks = Task.order(title: :asc)
  end

  def by_task
    @task = Task.where(id: params[:id]).first
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(tasks_create_params[:task])
    if @task
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def tasks_create_params
    params.permit(task: [:title, :description, :completed_at])
  end
end
