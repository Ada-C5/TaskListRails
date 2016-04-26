class PeopleController < ApplicationController
  def index
    @tasks = Task.all
    @people = Person.all
  end

  def show
    @person = Person.where(id: params[:id]).first
  end

  def tasks
    @person = Person.where(id: params[:id]).first
    @tasks = Task.where(person_id: params[:id])
  end
end
