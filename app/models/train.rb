class Train < ApplicationRecord

  belongs_to :workout
  belongs_to :weight
  has_and_belongs_to_many :routins


  scope :sorted, lambda {order("trains.wieght DESC")}

end
