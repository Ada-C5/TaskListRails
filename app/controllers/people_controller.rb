class PeopleController < ApplicationController
  def index
    @people = Person.all
  end


    def show
      @person = Person.find(params[:id])
    end

    def all_tasks
      person = Person.find(params[:id])
      @list = person.tasks
    end

end
