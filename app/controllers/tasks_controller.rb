class TasksController < ApplicationController
  def index
    @tasks = Task::all_tasks
  end

  def show
    @tasks = Task::find_task(params[:id])
    render :task
  end

end
