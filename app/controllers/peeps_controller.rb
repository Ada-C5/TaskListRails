class PeepsController < ApplicationController

  def index
    @peep_list = Peep.order(id: :asc)
  end

  def show
    @peep_list = Peep.where(id: params[:id])
    render :index
  end
end
