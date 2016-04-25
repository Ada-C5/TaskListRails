class PeopleController < ApplicationController
  def index
    @people = Person.order(id: :asc)
    render :people_index
  end

  def show
    @person = Person.find(params[:id])
    @tasks = Task.new
    render :people_detail_view
  end


end
