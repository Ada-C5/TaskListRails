class TasksController < ApplicationController
  def index
    @tasks = Task.order(:id)
  end

  def show
    @tasks = Task.where(id: params[:id])
  end

end
