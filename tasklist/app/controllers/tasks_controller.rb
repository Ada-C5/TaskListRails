class TasksController < ApplicationController
  def index #homepage
    @all_tasks = Task.all
  end

  def add

  end

  def edit
    @find_task = Task.where(id: params[:id]).first
    # render :edit
  end

  def update

    redirect_to action: "index"
  end

  def delete

  end

  def by_task
    @task = Task.where(id: params[:id]).first
    # render :index
  end
end
