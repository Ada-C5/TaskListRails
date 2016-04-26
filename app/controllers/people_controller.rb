class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def tasks
    @person = Person.find(params[:id])
    @tasks = Task.all
  end
end
