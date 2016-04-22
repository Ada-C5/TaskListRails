class PeopleController < ApplicationController
  def index
    # display all tasks
    @page_title = "Task List"
    @show_all = Task.all
  end
end
