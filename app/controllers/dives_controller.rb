class DivesController < ApplicationController

  before_filter :authenticate_diver!

  respond_to :html

  def index
    @dives = current_diver.dives
  end

  def show
    @dive = Dive.find(params[:id])
  end

  def new
    @dive = current_diver.dives.new
  end

  def create
    @dive = current_diver.dives.new(dive_params)

    if @dive.save
      respond_with @dive
    else
      render :new
    end
  end

  def edit
    @dive = Dive.find(params[:id])

    unless (@dive.diver == current_diver)
      head 403
    end
  end

  def update
    @dive = Dive.find(params[:id])

    unless (@dive.diver == current_diver)
      head 403
    end

    if @dive.update_attributes(dive_params)
      respond_with @dive
    else
      render :edit
    end
  end

  private

  def dive_params
    params.require(:dive).permit!
  end
end
