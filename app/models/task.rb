class Task < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    validates :is_done, inclusion: { in: [true, false] }

    belongs_to :user
    has_many :comments
end
