class TasksController < ApplicationController
  def index
    @tasks = Task.order(:id)
  end
end
