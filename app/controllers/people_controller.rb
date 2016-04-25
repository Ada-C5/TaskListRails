class PeopleController < ApplicationController

  def index
    @people = Person.search(params[:search])
  end

  def show
    @person = Person.find(params[:id])
  end

  def show_tasks
    @complete_tasks = Task.complete_tasks(params[:id])
    @incomplete_tasks = Task.incomplete_tasks(params[:id])
  end

end
