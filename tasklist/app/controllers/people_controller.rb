class PeopleController < ApplicationController
  def index
    @all_people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def by_task
    @person = Person.find(params[:id])
    @tasks = Person.find(params[:id]).tasks
  end
end
