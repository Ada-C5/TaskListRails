class TasksController < ApplicationController

  def index
    @tasks = Task::all_tasks
    @completed_tasks = Task::completed_tasks
    @uncompleted_tasks = Task::uncompleted_tasks

  end

  def show
    @tasks = [Task.find(params[:id])]
    render :_task
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(create_task_params[:task])
    if @task.save
      # redirect_to task_path(@task.id)
      redirect_to root_path
    else
      render '#'
    end
  end

  def edit
    @task = Task.find(params[:id])
    render :new
  end

  def update
    @task = Task.find(params[:id])
    @task.update(create_task_params[:task])
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
  end

  private
  def create_task_params
    # I don't get the syntax for the next line, it looks like an array as the value
    # at the key :title, but in the params hash it's not an array
    params.permit(task: [:title, :description])
  end

end
