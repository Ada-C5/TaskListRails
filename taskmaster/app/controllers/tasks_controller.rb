class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def by_name
    @tasks = Task.where(name: params[:name])
    render :index
  end

  def new
    @new_task = Task.new

  end

  def create
    Task.create(name: params[:task][:name], description: params[:task][:description])
    redirect_to "/"
  end

  def update
  end

  def delete
  end


end
