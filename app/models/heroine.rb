class Heroine < ApplicationRecord
    has_many :heroines_powers
    has_many :powers, through: :heroines_power
end
