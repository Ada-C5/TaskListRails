require 'chronic'

class TasksController < ApplicationController
  def index #homepage
    @all_tasks = Task.all
  end

  def add
    @task = Task.new

    render "add"
  end

  def create
    @task = Task.new(tasks_create_params[:task])

    if @task.save
      redirect_to root_path
    else
      redirect_to action: "add"
    end
  end

  def edit
    # @find_task = Task.where(id: params[:id]).first
    @find_task = Task.find(params[:id])
    # if @find_task.due_date != nil
    #   @find_task.due_date = "#{Chronic.parse((@find_task.due_date).to_s).strftime("%m/%d/%Y at %I:%M%p")}"
    # end
  end

  def update
    @task = Task.find(params[:id])
    @task.update(tasks_update_params[:task])
    if params[:task][:status] == "Completed"
      @task.date_completed = Time.now
    else
      @task.date_completed = ""
    end
    @task.save
    # @all_tasks = Queries.new.display_tasks
    redirect_to action: "index"
  end

  def destroy
    task = Task.find(params[:id]).destroy

    redirect_to action: "index"
  end

  def show
    @task = Task.find(params[:id])
    # render :show
  end

  def tasks_create_params
    params.permit(task: [:task, :priority, :due_date, :comments])
  end

  def tasks_update_params
    params.permit(task: [:task, :priority, :status, :due_date, :comments])
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
