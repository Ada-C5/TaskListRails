class TasksController < ApplicationController

  def index
    @all_tasks = Task.all.where('completed_at IS NULL')
  end

  def completed
    @all_tasks = Task.all.where('completed_at IS NOT NULL')
  end

  def show
    @selected_task = Task.find(params[:id])
  end

  def edit
    @selected_task = Task.find(params[:id])
    @all_people = Person.all
  end

  def add
    @selected_task = Task.new
    @all_people = Person.all
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

  def update_edit
    if(params.has_key?(:task) || params.has_key?(:description))
      @task = Task.find(params[:id])
      @task.title = params[:task][:title]
      @task.description = params[:task][:description]
      @task.person_id = params[:task][:person_id]
      @task.save
      redirect_to root_path
    else
      @task = Task.find(params[:id])
      @task.completed_at = Time.now
      @task.save
      redirect_to root_path
    end
  end

  private

  def task_create_params
    params.permit(task: [:title, :description, :person_id])
  end

end
