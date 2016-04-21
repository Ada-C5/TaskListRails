class TasksController < ApplicationController

	def index
		@tasks = Task.order(id: :asc)
		render :index
	end

	def new
		@task = Task.new
		render :create_task
	end

	def create
		@task = Task.create(task_create_params[:task])
		redirect_to index
	end

	def show
		@task = Task.find(params[:id])
		render :detail_view
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

  def task_create_params
    params.permit(task: [:name, :description, :completed_at, :priority])
  end

end

