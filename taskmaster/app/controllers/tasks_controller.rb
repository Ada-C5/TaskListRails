class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.where(id: params[:id])
    render :show
  end

  def by_name
    @tasks = Task.where(name: params[:name])
    render :index
  end

  def new
    @task = Task.new
    @all_people = Person.all
    if !@task.person_id
      @
  end

  def create
    @task = Task.new(task_create_params[:task])
    if @task.save
      redirect_to root_path  #ensures that they user can't repost the form
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
    @all_people = Person.all
    render :new
  end

  def complete
    @task = Task.find(params[:id])
    @task.update(completed: Time.now)
    redirect_to root_path
  end

  def incomplete
    @task = Task.find(params[:id])
    @task.update(completed: nil)
    redirect_to root_path
  end


  def update
    @task = Task.find(params[:id])
    @task.update(task_update_params[:task])
    redirect_to root_path
  end

  def delete
    @task = Task.where(id: params[:id])
    @task.first.destroy
    redirect_to root_path

  end

  private

  def task_create_params
    params.permit(task: [:name, :description, :priority, :person_id])
  end

  def task_update_params
    params.permit(task: [:name, :description, :priority, :completed, :person_id])
  end


end
