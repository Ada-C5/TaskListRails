class TasksController < ApplicationController
  def index
    @tasks = Task.order(id: :asc)
  end

  def show
    # = is assigning          # accessing
    # @tasks = Task.where(id: params[:id]).order(id: :asc)

    # where returns an array that can have more then one element
    # find returns one instance of the class
    # will throw ActiveRecord::RecordNotFound: Couldn't find Task with 'id'=500
    @tasks = Task.find(params[:id])

    # take html.erb page and give it to the browser
    # render :show
  end

  # this creates an empty shell all the viewer sees is the link name
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_create_params[:task]) #instantiate a new task
    if @task.save  #save returns true if the database insert succeeds
      #begins new request,
      redirect_to root_path # go to the index so we can see the album in the list
    else  # save failed
      # ends current request
      render :new # show the new task form view again
    end
  end

  def edit
    @task = Task.find(params[:id])

    render :new
  end

  def update
    # assigning the value of id to an instance @task
    @task = Task.find(params[:id])
    if @task.update_attributes(task_edit_params[:task])

      redirect_to "/tasks/#{@task.id}"
    else
      flash[:error] = @task.errors.full_messages
      render :new
    end
  end

  def destroy
    @task = Task.where(id: params[:id])
    @task.destroy_all
      redirect_to root_path
      flash[:alert] = "Task deleted"
  end


  def complete
    t = Time.now
    task = Task.find(params[:id])
    task.completed_at = t
    task.completion_status = "done"
      if task.save
      #  flash[:notice] = "Task completed"
       redirect_to root_path
      else
       render :new
      end
  end




private

  def task_create_params # tells rails which parameters(name and description) are okay
    params.permit(task: [:name, :description, :person_id])
  end

  def task_edit_params
    params.permit(task: [:name, :description, :person_id])
  end

  def completed_params
    params.permit(task: [:completed_at, true])
  end
end




# a good example to see what params is doing
# use the puts param into the method you want to check
# def eat
#   @tasks = []
#   puts "********************"
#   puts params
#   render :index
# end
