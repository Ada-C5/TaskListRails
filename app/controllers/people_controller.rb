class PeopleController < ApplicationController
  def index
    @people = Person.order(id: :desc)
  end

  def show
    @person = Person.where(id: params[:id]).first
    @tasks = Task.where(person_id: @person.id)
    # is there an active record where to search WHERE with an AND statement?
    uncompleted = 0
    @tasks.each do |task|
      if task.completed_at == nil
        uncompleted += 1
      end
    end
    @uncompleted = uncompleted
  end
end