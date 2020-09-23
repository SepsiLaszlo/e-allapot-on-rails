class FloorsController < ApplicationController
  def index
    @floors =  Room.all.pluck(:floor).uniq
  end

  def show
    @rooms = Room.where(floor: params[:id])
  end
end
