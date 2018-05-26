class MusclesController < ApplicationController

  layout 'jmobile'


  def index
    @muscles = Muscle.sorted

  end

  def show
  end
end


private

def muscle_trains_number(muscle)
  size = 0
  muscle.workouts.each do |workout|
    size += workout.trains.size
  end
  size

end
