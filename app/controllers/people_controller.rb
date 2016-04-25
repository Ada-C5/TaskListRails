class PeopleController < ApplicationController
  def index
    @people = Person.all
    # can't get the task query working in the controller, argh 
    render :pindex
  end 

  def show
    @people = Person.find(params[:id])
    render :show
  end 

  def tasks
    @people = Person.find(params[:id])
    @tasks = Task.all
    render :tasks
  end 

end
