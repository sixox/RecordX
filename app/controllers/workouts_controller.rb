class WorkoutsController < ApplicationController

  layout 'jmobile'

  def index
    @workouts = Muscle.find(params[:muscle_id]).workouts
  end







end
