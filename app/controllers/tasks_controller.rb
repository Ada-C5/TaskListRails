class TasksController < ApplicationController

  def index
    @tasks = Task::all_tasks
    @completed_tasks = @tasks.where(completed_at: nil)
    @uncompleted_tasks = @tasks.where.not(completed_at: nil)

  end

  def show
    @tasks = Task::find_task(params[:id])
    render :_task
  end

end
