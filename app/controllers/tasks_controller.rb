class TasksController < ApplicationController
  def index
    @tasks = Task.order(id: :desc)
    @people = Person.all
  end

  def show
    @task = Task.where(id: params[:id]).first
  end

  def new
    @task = Task.new
    # @people = Person.all
  end

  def create
    @task = Task.new(task_create_params[:task])
    if @task.save
      redirect_to root_path
    else
    render :new
    end
  end

  def destroy
    @task = Task.where(id: params[:id])
    @task.destroy_all
    redirect_to root_path
  end

  def edit
    @task = Task.find(params[:id])
    render :edit
  end

  def complete
    task = Task.find(params[:id])
    task[:completed_at] = Time.now
    task.save
    redirect_to root_path
  end

  def update
    task = Task.find(params[:id])
    task.update_attributes(task_update_params[:task])
    redirect_to root_path
    # if @task.update_attributes(params[:task])
    #   redirect_to root_path
    # else
    #   render 'edit'
    # end
  end


  private
  #tells us what parameters we want to use when we create an album
  def task_create_params
    params.permit(task: [:name, :description, :person_id])
  end

  def task_update_params
    params.permit(task: [:name, :description, :person_id])
  end
end
