class TasksController < ApplicationController

  def index
    # @tasks = Task.order(completed_at: :asc)
    @tasks = Task.search(params[:search])
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
    @people = Person.by_name
  end

  def create
    @task = Task.new(tasks_create_params[:task])
    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def edit
    @task = Task.where(id: params[:id]).first
    @people = Person.by_name
  end

  def update
    Task.update(params[:id], tasks_create_params[:task])
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def tasks_create_params
    params.permit(task: [:title, :description, :completed_at, :person_id])
  end


end
