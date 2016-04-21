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
		redirect_to '/'
	end

	private

	def task_create_params
		params.permit(task: [:title, :description])
	end
end
