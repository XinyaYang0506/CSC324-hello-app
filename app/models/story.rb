class Story < ApplicationRecord
    validates :PPE_type1, presence: true,
    length: {minimum: 1, maximum: 30}
    validates :Amount1, presence: true,
    length: {minimum: 1, maximum: 30}
    validates :Recipient1, presence: true,
    length: {minimum: 1, maximum: 30}
    validates :PPE_type2, presence: true,
    length: {minimum: 1, maximum: 30}
    validates :Amount2, presence: true,
    length: {minimum: 1, maximum: 30}
    validates :Recipient2, presence: true,
    length: {minimum: 1, maximum: 30}
end
