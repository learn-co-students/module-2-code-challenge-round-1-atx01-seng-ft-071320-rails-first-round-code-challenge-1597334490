class HeroinePower < ApplicationRecord
    belongs_to :heroine
    belongs_to :power

    # validates :strength, presence: ("Strong", "Weak", "Average" )
    validates :power, uniqueness: true 


end
