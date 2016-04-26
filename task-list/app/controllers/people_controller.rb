class PeopleController < ApplicationController
  def index
    @people = Person.order(id: :asc)
    @list = Task.group(:person_id).where(completed_on: nil).count

  end

  def show
    @list = Task.where(person_id: params[:id])
  end
end
