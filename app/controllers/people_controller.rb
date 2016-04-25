class PeopleController < ApplicationController

  def index
    @all_people = Person.all
    render :index
  end

  def show
    @person = Person.find(params[:id])
    @tasks = @person.tasks.where(completed_at: nil)
    render :show_person
  end
end
