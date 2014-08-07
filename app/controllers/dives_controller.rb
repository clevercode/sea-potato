class DivesController < ApplicationController

  before_filter :authenticate_diver!

  def index
    @dives = current_diver.dives
  end

  def new
    @dive = current_diver.dives.new
  end
end
