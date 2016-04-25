class PeopleController < ApplicationController
  def index
      @all_people = Person.all
  end


  def show
    @all_people = Person.find(params[:id])
  end

  def all_tasklist
    @person = Person.find(params[:id])
    @list = @person.rails_task_lists
  end

end
