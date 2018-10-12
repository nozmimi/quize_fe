class Quiz < ApplicationRecord
    validates :question, presence: true, length: { in: 1..500 }
    validates :selection, presence: true, length: { in: 1..500 }
    validates :answer, presence: true, length: { in: 1..500 }
end
