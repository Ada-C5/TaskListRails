class ListController < ApplicationController

  def index
    @lists = Task.order(id: :asc)
  end

  def show
    @list = Task.find(params[:id])
    @people = Person.find(@list.person_id) if @list.person_id != nil
  end

  def new
    @list = Task.new
  end

  def create
    @list = Task.new(list_create_params[:task])
    if @list.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @list = Task.find(params[:id]).destroy
    redirect_to root_path
  end

  def edit
    @list = Task.find(params[:id])
  end

  def update
    @list = Task.update(params[:id],list_edit_params[:task])

      if @list.save
        redirect_to root_path
      else
        render :edit
      end
  end

  def complete
    @list = Task.find(params[:id])
    @list.update(completed_on: DateTime.now)
    redirect_to root_path
  end

  def incomplete
    @list = Task.find(params[:id])
    @list.update(completed_on: nil)
    redirect_to root_path
  end

  private
  def list_create_params
    params.permit(task: [:title, :description, :person_id])
  end

  def list_edit_params
    params.permit(task: [:title, :description, :completed_on, :updated_at, :person_id])
  end
end
