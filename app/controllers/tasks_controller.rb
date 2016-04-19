class TasksController < ApplicationController
  def index
    #hooking up the db
    # @albums = Album.order(artist: :asc)
    @tasks = Task.order(id: :desc)
  end

  def show
    @task = Task.where(id: params[:id]).first
  end

  # def destroy
  #   Task.where(id: params[:id]).destroy_all
  # end
end
