

class HeroinePower < ApplicationRecord
  belongs_to :heroine
  belongs_to :power

  validates :strength, inclusion: { in: %w(Strong Weak Average),
   message: "can only be Strong, Weak, or Average (case-sensitive)"}

   validates_uniqueness_of :heroine_id, :scope => :power_id, message: "or power has already been taken"

end
