class PeopleController < ApplicationController
  # index action: Show a list of all people in the database.
  # Link each Person's name to their show action.
  # The index should include a count of how many uncompleted tasks are assigned to each Person.
  # show action: show all of the Person's information

  def index
    # display all tasks
    @page_title = "Task Masters"
    @show_all = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end
end
