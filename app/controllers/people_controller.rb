class PeopleController < ApplicationController
  def index
    @people = Person.all
    render :index
  end

  def show
    @person = Person.find(params[:id])
  end

  def tasks
    @person = Person.find(params[:id])
  end

end
