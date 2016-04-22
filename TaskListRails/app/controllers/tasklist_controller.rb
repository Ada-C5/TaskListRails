class TasklistController < ApplicationController
  def index
      @all_tasklist = RailsTaskList.all
  end


    # def by_title
    #   @tasklist = RailsTaskList.where(title: params[:title])
    # end

    def new
      @tasklist = RailsTaskList.new
    end

    def finished
      @tasklist = RailsTaskList.find(params[:id])
      @tasklist.update(completion_status: "done")
      redirect_to root_path
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
      @all_tasklist = RailsTaskList.find(params[:id])
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
      params.permit(rails_task_list: [:title, :description,])
    end

    def edit_params
        params.permit(rails_task_list: [:title, :description, :completion_status, :completed_at, :created_at, :updated_at])
    end

    def done_params
        params.permit(done_task_list: [:completion_status])
    end

end
