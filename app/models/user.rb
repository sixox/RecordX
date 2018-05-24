class User < ApplicationRecord

  belongs_to :role
  has_many :routins

end
