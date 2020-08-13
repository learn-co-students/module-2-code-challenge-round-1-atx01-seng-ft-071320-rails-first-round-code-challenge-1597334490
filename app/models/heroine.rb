class Heroine < ApplicationRecord
    has_many :heroine_powers
    has_many :powers, through: :heroine_powers
    def power_strength(power)
        heroine_power = self.heroine_powers.find do |heroine_power|
            heroine_power.power == power 
        end
        heroine_power.strength
    end
end
