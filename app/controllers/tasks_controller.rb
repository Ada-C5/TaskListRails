class TasksController < ApplicationController
	def index
		@task_list = Task.order(:completed_at)
	end

	def by_title
		@task_list = Task.where(title: params[:title])
		render :index
	end
end
