class DiaryEntry < ApplicationRecord
  validates :mood, :title, :content, presence: true

  belongs_to :plan
end
