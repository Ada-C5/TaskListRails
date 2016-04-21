class HomeController < ApplicationController
  def index
    @tasks = Task.order(id: :asc)
  end
  def by_task
   @task = Task.where(id: params[:id])
   render :show
 end
end
