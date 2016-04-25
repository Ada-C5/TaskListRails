class TasksController < ApplicationController
	def index
		@tasks = Task.all
    @people = Person.all
	end 

  def show
    @tasks = Task.find(params[:id])
    render :show
  end 

  def new 
    @task = Task.new 
    @people = Person.all 
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

  def destroy
    Task.destroy(params[:id])
    if params[:id] = true 
      redirect_to root_path
    end 
  end

  def edit 
    @task = Task.find(params[:id])
    @people = Person.all 
  end 

  def update
    @task = Task.find(params[:id])
    @task.update(update_params[:task])
    redirect_to root_path
  end 

  def complete
    @task = Task.find(params[:id])
    completed = Time.now 
    @task.update_column(:task_completion, completed)
    redirect_to root_path

  end 

  def show_complete
    @tasks = Task.all
  end


  private

  def new_params
    params.permit(task: [:task_name, :task_description, :person_id])
  end

  def update_params
    params.permit(task: [:task_name, :task_description, :task_completion, :person_id])
  end
end
