class TasksController < ApplicationController

	def index
		@tasks = Task.order(id: :asc)
		render :index
	end

	def show
		@task = Task.find(params[:id])
		render :detail_view
	end

end
