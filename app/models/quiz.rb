class Quiz < ApplicationRecord
    
    validates :question, presence: true, length: { in: 1..1000 }
    validates :selection, presence: true, length: { in: 1..1000 }
    validates :answer, presence: true, length: { in: 1..1000 }
end
