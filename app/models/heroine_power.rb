class HeroinePower < ApplicationRecord
    validates :strength, inclusion: {in: %w(Strong Weak Average), message: "%{value} is not a valid strength" }
    validates_uniqueness_of :power_id, scope: [:heroine_id]
    belongs_to :heroine 
    belongs_to :power 

   
end
