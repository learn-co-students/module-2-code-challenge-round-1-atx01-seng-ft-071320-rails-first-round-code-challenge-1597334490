class Heroine < ApplicationRecord
    has_many :heroinePowers
    has_many :powers, through: :heroinePowers

    def power_strength(power)
        HeroinePower.find_by(heroine_id: self.id, power_id: power.id).strength
    end
end
