class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @people = Person.all
  end

  def show
    @task = Task.where(id: params[:id]).first
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_create_params[:task])  #use the params that you accept
    if @task.save                         #save will return true if it DID save
      redirect_to root_path               #redirect them somewhere else if not working
    else
      render :new                         #finish the transaction by rendering the view
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path #you have to redirect_to instead of render, so that it goes to the route/controller and not only directly to the view (otherwise it would say @tasks is nil, becuase it never created it)
  end                     # also, redirect_to doesnt work with :index, you have to give it a path

  def complete
    @task = Task.find(params[:id])
    if @task.completed_at == nil
      @task.update(completed_at: DateTime.now)
    else
      @task.update(completed_at: nil)
    end
    redirect_to root_path
  end

  def edit
    @task = Task.find(params[:id])
    @people = Person.all #returns an array
    render :new
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_update_params[:task])
    redirect_to root_path
  end

  private

  def task_create_params  #tell rails which params are ok to be in the model
    params.permit(task: [:name, :description, :person_id])
  end

  def task_update_params  #tell rails which params are ok to be in the model
    params.permit(task: [:name, :description, :person_id])
  end

end




# <% @people.each do |person| %>
#   <%= f.radio_button(:person_id, person.id) %>
#   <%= f.label(:person_id, person.name, :value => person.id) %>
# <% end %>
