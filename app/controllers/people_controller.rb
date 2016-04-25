class PeopleController < ApplicationController
  def index
    @people = Person.order(id: :asc)
    render :index
  end

  def show
    @person = Person.find(params[:id])
    @tasks = Task.new
    render :detail_view
  end


end
