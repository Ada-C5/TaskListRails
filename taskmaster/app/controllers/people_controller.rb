class PeopleController < ApplicationController

  def index
    @people = Person.all
  end

  def show
    @people = Person.where(id: params[:id])
    render :show
  end

end
