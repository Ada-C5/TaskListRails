class TasksController < ApplicationController
	def index
		@task_list = Task.where(completed_at: nil)
	end

	def show
		@task_list = Task.where(title: params[:title])
		# @people_list = Person.where(name: params[:name])
		render :index
	end

	def new
		@task = Task.new
	end

	def show_completed
		@task_list = Task.where.not(completed_at: nil)
		render :show
	end

	def create
		@task = Task.create(task_create_params[:task])
		@person = Person.create(people_create_params[:people])
		redirect_to root_path
	end

	def edit
		@edit = Task.find(params[:id])
		@person = Person.all

	end

	def update
		@task = Task.find(params[:id])
		@person = Person.find(params[:id])
		@task.update_attributes(task_update_params[:task])
		@person.update_attributes(people_create_params[:person])
		redirect_to root_path
	end

	def completed
		@task = Task.find(params[:id])
		@task.completed_at = DateTime.now
		@task.save
		show_completed
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

	def people_create_params
		params.permit(person: [:name])
		
	end


end

