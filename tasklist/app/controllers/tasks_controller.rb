class TasksController < ApplicationController
  def index #homepage
    @all_tasks = Task.all
  end

  def add

  end

  def edit

  end

  def delete

  end

  def by_task
    @all_tasks = Task.where(task: params[:task])
    render :index
  end
end
