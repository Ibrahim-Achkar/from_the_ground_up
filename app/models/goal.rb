class Goal < ApplicationRecord
  validates :content, presence: true, length: { maximum: 140 }

  belongs_to :plan
end
