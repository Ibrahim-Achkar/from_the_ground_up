class Task < ApplicationRecord
  validates :due_date, :action, presence: true

  belongs_to :plan
end
