class HeroinePower < ApplicationRecord 
    belongs_to :heroine 
    belongs_to :power

    validates :strength, presence: true, inclusion: {in: %w(Strong Weak Average)}
end 