class Power < ApplicationRecord
    has_many :heroinePowers
    has_many :heroines, through: :heroinePowers

    def heroine_count
        self.heroines.count
    end
end
