require 'chronic'

class TasksController < ApplicationController
  def index #homepage
    @all_tasks = Task.all
  end

  def add

  end

  def create
    task = Task.create(task: params[:task], priority: params[:priority], status: params[:status], due_date: params[:due_date], comments: params[:comments], date_completed: params[:date_completed])

    redirect_to action: "index"
  end

  def edit
    @find_task = Task.where(id: params[:id]).first
    # if @find_task.due_date != nil
    #   @find_task.due_date = "#{Chronic.parse((@find_task.due_date).to_s).strftime("%m/%d/%Y at %I:%M%p")}"
    # end
  end

  def update
    task = Task.find(params[:id])
    task.update(task: params[:task], priority: params[:priority], status: params[:status], due_date: params[:due_date], comments: params[:comments], date_completed: params[:date_completed])
    task.save
    # @all_tasks = Queries.new.display_tasks
    redirect_to action: "index"
  end

  def delete
    task = Task.find(params[:id]).destroy
    
    redirect_to action: "index"
  end

  def by_task
    @task = Task.where(id: params[:id]).first
    # render :index
  end
end

#   post "/delete" do
#     @delete = Queries.new.delete_task(params[:task_id].to_i)
#     redirect '/'
#   end
#
#   get "/:field/:direction" do
#     @all_tasks = Queries.new.sort(params[:field], params[:direction])
#     erb :index
#   end
#
#   run!
# end
