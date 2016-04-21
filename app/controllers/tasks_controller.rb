class TasksController < ApplicationController
  def home
    # display all tasks
    @page_title = "Task List"
    @show_all = ::Task.all
  end

  def index
    # display all tasks
    @page_title = "Task List"
    @show_all = ::Task.all
  end

  def create
    # show form to create new task
		@page_title = "New Task"
    @new_task_title = params[:title]
    @new_task_description = params[:description]
    if @new_task_title
      redirect_to '/'
    end
  end

  def show
    # look up a task
    @lookup = ::Task.where(title: params[:title]).first
  end

  # def show
  # @album = Album.find(params[:id])
  # end

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
