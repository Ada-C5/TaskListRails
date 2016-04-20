class TasksController < ApplicationController

  def index
    @tasks = Task::all_tasks
    @completed_tasks = Task::completed_tasks
    @uncompleted_tasks = Task::uncompleted_tasks

  end

  def show
    @tasks = Task::find_task(params[:id])
    render :_task
  end

end
