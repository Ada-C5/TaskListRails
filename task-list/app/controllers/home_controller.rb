class HomeController < ApplicationController
  def index
    @all_tasks = Task.all
  end

  def single_task
    @selected_task = Task.where(title: params[:title]).first
    render :single_task
  end

end
