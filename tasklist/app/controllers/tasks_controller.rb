class TasksController < ApplicationController
  def index
    @tasks = Task.order(title: :asc)
  end

  def by_task
    @task = Task.where(id: params[:id]).first
  end
end
