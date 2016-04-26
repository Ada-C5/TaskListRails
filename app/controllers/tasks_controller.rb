class TasksController < ApplicationController

  def index
    @tasks = Task.order(id: :asc)  # have this available in your index.html
  end

  def show
    @task = Task.find(params[:id])  # have this available in your index.html
    render :show
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
    render :new
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to root_path
  end

  def destroy
    Task.find(params[:id]).destroy
    redirect_to root_path
  end

  def save_edit
    @task = Task.find(params[:id])
    @task.update(task_edit_params[:task]) #probably put this in a method
    redirect_to root_path
  end

  def create
    @task = Task.new(task_create_params[:task]) #probably put this in a method
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def status
    @task = Task.find(params[:id])

    if @task.completion_status
      @task.update(completion_status: false)
    else
      @task.update(completion_status: true)
    end
    redirect_to root_path
  end

  private


end
