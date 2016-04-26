class TasksController < ApplicationController

	def index
		@tasks = Task.order(id: :asc)
		@person = Person.new
		render :index
	end

	def new
		@task = Task.new
		render :create_task
	end

	def create
		@task = Task.create(task_create_params[:task])
		redirect_to tasks_path
	end

	def show
		@task = Task.find(params[:id])
		render :detail_view
	end

	def edit
		@task = Task.find(params[:id])
		@person = Person.new
		render :edit
	end

	def update
		@task = Task.find(params[:id])
		@task.update(task_update_params[:task])
		redirect_to tasks_path
	end

	def delete
   Task.destroy(params[:id])
   if params[:id] = true 
     redirect_to root_path
   end 
	end


def complete
   @task = Task.find(params[:id])
   completed = Time.now 
   @task.update_column(:completed_at, completed)
   redirect_to root_path
 end

	private

  def task_create_params
    params.permit(task: [:name, :description, :completed_at, :priority, :person_id])
  end

  def task_update_params
    params.permit(task: [:name, :description, :priority, :person_id])
  end

end

