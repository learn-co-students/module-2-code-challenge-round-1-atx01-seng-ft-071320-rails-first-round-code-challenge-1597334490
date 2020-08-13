class Power < ApplicationRecord
    has_many :heroines_powers
    has_many :heroines, through: :heroines_power

    def number_of_heros 
        self.heroines.count
    end
end
