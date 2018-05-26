class Workout < ApplicationRecord

  belongs_to :muscle
  has_many :trains

  scope :sorted, lambda { order("workouts.position ASC")}




end
