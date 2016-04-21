class TasksController < ApplicationController

  def index
    @tasks = Task.order(id: :asc)  # have this available in your index.html
  end

  def show
    @task = Task.where(id: params[:id]).first  # have this available in your index.html
    render :show
  end

  # def task_id
  #   # @task = Task.where(id: params[:id]) #probably put this in a method
  #   @task = Task.find(params[:id])
  #   render :show
  # end

  def new
    @task = Task.new
    # render :new

  end

  def create
    @task = Task.new(task_create_params[:task]) #probably put this in a method
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def task_create_params
    params.permit(task: [:name, :description])
  end

end
