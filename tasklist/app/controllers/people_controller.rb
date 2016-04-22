class PeopleController < ApplicationController

  def index
    @people = Person.search(params[:search])
  end

  def show
    @person = Person.find(params[:id])
  end

end
