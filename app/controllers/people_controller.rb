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

  def all
    @person = Person.find(params[:id])
    @incomplete_tasks = @person.tasks.where(completed_at: nil)
    @complete_tasks = @person.tasks.where.not(completed_at: nil)
    render :all_tasks
  end
end
