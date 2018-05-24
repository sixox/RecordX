class Routin < ApplicationRecord

  belongs_to :user
  has_and_belongs_to_many :days
  has_and_belongs_to_many :trains

end
