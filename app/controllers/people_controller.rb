class PeopleController < ApplicationController

  def index
    @people = Person.order(id: :asc)  # have this available in your index.html
  end

  def show
    @person = Person.find(params[:id])  # have this available in your index.html
    @tasks = Task.where(person_id: @person.id)
    render :show
  end

end
