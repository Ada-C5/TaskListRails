class TasklistController < ApplicationController
  def index
      @tasklist = RailsTaskList.all
  end


    # def by_title
    #   @tasklist = RailsTaskList.where(title: params[:title])
    # end

    def new
      @tasklist = RailsTaskList.new
    end

    def edit
      @tasklist = RailsTaskList.find(params[:id])
      render :new
    end

    def update
      @tasklist = RailsTaskList.find(params[:id])
      if @tasklist.update(edit_params[:rails_task_list])
        redirect_to tasklist_path(@tasklist.id)
      else
        render :new
      end
    end



    def show
      @tasklist = RailsTaskList.where(id: params[:id])
    end

    def create
      @tasklist = RailsTaskList.new( tasklist_params[:rails_task_list])

      if @tasklist.save
        redirect_to root_path
      else
      render :new
      end
    end

    def delete

        @tasklist = RailsTaskList.find(params[:id])
        if @tasklist.destroy
          redirect_to root_path
        else
        render :new
        end
    end

    private

    def tasklist_params
      params.permit(rails_task_list: [:title])
    end

    def edit_params
        params.permit(rails_task_list: [:title, :description])
    end

end
