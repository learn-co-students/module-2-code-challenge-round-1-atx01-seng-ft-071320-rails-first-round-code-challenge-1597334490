class Power < ApplicationRecord
  has_many :heroines, through: :HeroinePower
end
