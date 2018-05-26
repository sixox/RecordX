class TrainsController < ApplicationController

  layout 'jmobile'

  def index
    @trains = Workout.find(params[:format]).trains.sorted
  end

  def show
  end

  def new
  end

  def edit
  end
end
