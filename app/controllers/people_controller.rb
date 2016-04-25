class PeopleController < ApplicationController
  def index
    @people = Person.order(:id)
  end

  def show
    @person = Person.find(params[:id])
  end

  def tasks
    @person = Person.find(params[:id])
    @tasks = Task.where( person_id: @person.id )

  end

end
