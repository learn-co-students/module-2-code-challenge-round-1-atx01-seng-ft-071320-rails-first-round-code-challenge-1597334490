class HeroinePower < ApplicationRecord
    belongs_to :heroine
    belongs_to :power

    validates :strength, presence: true, inclusion: { in: %w(strong weak average),
    message: "Strength must be strong, weak, or average" }
end
