class TasksController < ApplicationController
  def home
    # display all tasks
    @page_title = "Task List"
  end

  def index
    # display all tasks
    @page_title = "Task List"
    @show_all = ::Task.all
  end

  def new
    # show form to create new task
    @task = Task.new
  end

  def create
    @task = Task.new(task_new_params[:task])
      if @task.save
        redirect_to root_path
      else
        render :index
      end
  end

  def show
    # look up a task
    @lookup = ::Task.find_by title: params[:title]
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def task_new_params
  params.permit(task: [:title, :description])
end
end



# class AlbumsController < ApplicationController
#   def index
#     @albums = Album.order(artist: :asc)
#   end
#
#   def by_artist
#     @albums = Album.where(artist: params[:artist]).order(title: :asc)
#     render :index
#   end
