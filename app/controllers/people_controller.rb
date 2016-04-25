class PeopleController < ApplicationController
  def index
    @people = Person.order(name: :asc)
    render :people
  end

  def show
    @person = Person.find(params[:id])
    render :people
  end


end
