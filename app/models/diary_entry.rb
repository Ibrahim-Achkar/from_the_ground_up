class DiaryEntry < ApplicationRecord
  acts_as_taggable_on :moods
  validates :mood_list, :title, :content, presence: true

  belongs_to :plan
end
