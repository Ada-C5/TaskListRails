class PeopleController < ApplicationController
  def index
    @people = Person.all
    render :index
  end

  def show
    render :_person
  end

end
