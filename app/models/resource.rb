class Resource < ApplicationRecord
  validates :url, presence: true

  belongs_to :plan
end
