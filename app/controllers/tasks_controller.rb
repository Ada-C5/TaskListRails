class TasksController < ApplicationController
  def home
    # display all tasks
    @page_title = "Task List"
  end

  def index
    # display all tasks
    @page_title = "Task List"
    @show_all = Task.all
  end

  def new
    # show form to create new task
    @page_title = "New Task"
    @task = Task.new
    @all_people = Person.all
  end

  def create
    # actually make & save a new task
    @task = Task.new(task_new_params[:task])
      if @task.save
        redirect_to :tasks_controller => 'index'
      else
        render :new
      end
  end


  def edit
    #show form
    @page_title = "Edit"
    @task = Task.find(params[:id])
    @all_people = Person.all
    render :edit
  end

  def update
    #save changes
    @task = Task.find(params[:id])
    if @task.update(task_new_params[:task])
      redirect_to tasks_path
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  def mark_complete
    @task = Task.find(params[:id])
    @task.update(completed: DateTime.now.to_s)
    # redefine new group of tasks that don't have nil for completed
    # reroute to new view for completed tasks.
    redirect_to tasks_path
  end

  def task_new_params
    params.permit(task: [:title, :description, :person_id])
  end

  def show
    @page_title = "#{@task.title}"
    @task = Task.find(params[:id])
  end
end
