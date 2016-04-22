class PeopleController < ApplicationController
  def index
    @people = Person.order(id: :desc)

  end

  def show
    @person = Person.where(id: params[:id]).first
    @tasks = Task.where(person_id: @person.id)
  end
end
