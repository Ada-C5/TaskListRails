class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def by_name
    @tasks = Task.where(name: params[:name])
    render :index
  end

end
