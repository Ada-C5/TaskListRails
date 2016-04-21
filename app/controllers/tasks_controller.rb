class TasksController < ApplicationController
	def index
		@task_list = Task.order(:completed_at)
	end

	def by_title
		@task_list = Task.where(title: params[:title])
		render :index
	end

	def new
		@task = Task.new
	end

	def create
		@task = Task.create(task_create_params[:task])
		redirect_to root_path
	end

	def edit
		@edit = Task.find(params[:id])
		# redirect_to '/edit'
	end

	def update
		@task = Task.find(params[:id])
		@task.update_attributes(task_update_params[:task])
		redirect_to root_path
	end

	def delete
	Task.find(params[:id]).destroy
   redirect_to root_path
	end

	private

	def task_create_params
		params.permit(task: [:title, :description])
	end

	def task_update_params
		params.permit(task: [:title, :description])
	end

end

