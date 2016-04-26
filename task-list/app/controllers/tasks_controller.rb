class TasksController < ApplicationController


  def index   #this is enough for the controller to render a view, but need to tell rails when this is an appropriate action
    @all_tasks = all_incomplete_tasks
  end

  def all_incomplete_tasks
    Task.where(completed_at: nil)
  end

  def show
    @task = Task.find(params[:id])
    render :single_task
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_create_params[:task])
    redirect_to root_path
  end

  def destroy
    Task.find(params[:id]).destroy
    redirect_to root_path  #redirect does not remember instance variables
  end

  def complete
    Task.find(params[:id]).update({completed_at: Time.now})
    redirect_to root_path
  end

  def edit
    @task = Task.find(params[:id])
    render :edit
  end

  def update
    Task.find(params[:id]).update(task_create_params[:task])
    redirect_to root_path
  end


  private

 def task_create_params
   params.permit(task: [:title, :description, :person_id])
 end

end
