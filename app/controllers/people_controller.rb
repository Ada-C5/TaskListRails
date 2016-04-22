class PeopleController < ApplicationController

  def index
    @all_people = Person.all
    render :index
  end
end
