class Muscle < ApplicationRecord

  has_many :workouts


  scope :sorted, lambda { order("muscles.name ASC")}



end
