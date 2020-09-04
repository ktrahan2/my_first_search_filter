class Dog < ApplicationRecord
    validates :name, presence: true

    validate :name, :cannot_be_vulgar

    def cannot_be_vulgar
        if name == 'shit'
            errors.add(:name, 'cannot be vulgar')
        end
    end
    
end
