class Task < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    validates :is_done, inclusion: { in: [true, false] }
end
