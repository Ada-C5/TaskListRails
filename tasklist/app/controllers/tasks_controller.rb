class TasksController < ApplicationController
  def index
    @tasks = Task.order(title: :asc)
  end

  def by_task
    @tasks = Task.where(id: params[:id])
    render :index
  end
end
