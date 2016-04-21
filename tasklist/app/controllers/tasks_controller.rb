class TasksController < ApplicationController
	def index
		@tasks = Task.all
	end
  
  def by_task
    @tasks = Task.where(task_name: params[:task])
    render :index
  end  

  def show
    @tasks = Task.find(params[:id])
    render :show
  end 

  def new 
    @task = Task.new 
  end 

  def create
    # params needs to be specific to what pieces I am getting 
    @task = Task.new(new_params[:task])
    if @task.save 
      redirect_to root_path
    else
      render :new
    end 
  end 

  def delete
    Task.destroy(params[:id])
    if params[:id] = true 
      redirect_to root_path
    end 
  end

  def edit 
    @task = Task.find(params[:id])
  end 

  def update
    @task = Task.find(params[:id])
    @task.update(update_params[:task])
    redirect_to root_path
  end 

  def complete
    render :complete # do I need this? Maybe route to complete since it is not a post
  end 

  private

  def new_params
    params.permit(task: [:task_name, :task_description])
  end

  def update_params
    params.permit(task: [:task_name, :task_description])
  end
end
