class HeroinePower < ApplicationRecord
    belongs_to :heroine 
    belongs_to :power
    validates :strength, :inclusion => { :in => %w(Weak Strong Average), :message => "must be Weak, Average, or Strong" }
    
end
