class Workout < ApplicationRecord

  belongs_to :muscle
  has_many :trains


end
