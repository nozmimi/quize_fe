class Quiz < ApplicationRecord
    
    validates :question, presence: true, length: { in: 1..1000 }
    validates :selection, presence: true, length: { in: 1..1000 }
    validates :selection2, presence: true, length: { in: 1..1000 }
    validates :selection3, presence: true, length: { in: 1..1000 }
    validates :selection4, presence: true, length: { in: 1..1000 }
    validates :answer, presence: true, length: { in: 1..1000 }
end
