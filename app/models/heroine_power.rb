class HeroinePower < ApplicationRecord
    belongs_to :heroine
    belongs_to :power

    validates :strength, inclusion: { in: %w(strong weak average), 
    message: "must be strong, average, or weak" }

    validates :heroine_id, uniqueness: { scope: :power_id,
    message: "must only have each power once" }
end
