class Heroine < ApplicationRecord
  has_many :powers, through: :HeroinePower
end
