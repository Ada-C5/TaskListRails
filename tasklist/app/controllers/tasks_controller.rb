require 'chronic'

class TasksController < ApplicationController

  def index
    @tasks = Task.order(title: :asc)

    # mystring = params[:search].gsub(/[^A-Za-z0-9]/, '')
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(tasks_create_params[:task])
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @task = Task.where(id: params[:id]).first
  end

  def update
    Task.update(params[:id], tasks_create_params[:task])
    redirect_to root_path
  end

  def delete
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
  end

  private

  def tasks_create_params
    params.permit(task: [:title, :description, :completed_at])
  end


end
