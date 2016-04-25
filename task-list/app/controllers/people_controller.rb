class PeopleController < ApplicationController

  def index
    @all_people = Person.all
  end

  def show
    @selected_person = Person.find(params[:id])
  end

end
