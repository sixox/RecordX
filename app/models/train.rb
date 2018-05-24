class Train < ApplicationRecord

  belongs_to :workout
  belongs_to :weight
  has_and_belongs_to_many :routins

end
