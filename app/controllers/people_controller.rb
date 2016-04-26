class PeopleController < ApplicationController
  def index
      @all_people = Person.all
  end


  def show
    @people = Person.find(params[:id])

  end

  def all_tasklist
    @person = Person.find(params[:id])
    @list = @person.rails_task_lists.where(completion_status: nil)
    @done_list = @person.rails_task_lists.where(completion_status: "Done!")
  end

end
