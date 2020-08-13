class HeroinePower < ApplicationRecord
    belongs_to :heroine 
    belongs_to :power
    validates :strength, inclusion: { in: %w(Strong Weak Average) }
    validate :no_duplicate_powers

    def no_duplicate_powers
        if HeroinePower.find_by(heroine_id: self.heroine_id, power_id: self.power_id)
            @errors.add(:base, "A Heroine cannot have duplicate powers") 
        end
    end
end
