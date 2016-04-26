class PeopleController < ApplicationController
  def index
    @people = Person.order(id: :asc)
    render :index
  end

  def show
    @person = Person.find(params[:id])
    @icnomplete_tasks = Task.order(completed_at: :desc)
    render :detail_view
  end


end
