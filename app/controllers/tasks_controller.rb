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
  end

  def show
    # look up a task
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
