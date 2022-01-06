class Plan < ApplicationRecord
  acts_as_taggable
  acts_as_taggable_on :categories
  validates :name, presence: true
  acts_as_votable #votable gem

  belongs_to :user
  has_many :resources, dependent: :destroy
  has_many :diary_entries, dependent: :destroy
  has_many :tasks, dependent: :destroy
  has_many :goals, dependent: :destroy
  has_many :likes, dependent: :destroy
  # has_many :liking_users, class_name: 'Users', through: :liked_plans

  def self.search(search)
    where("lower(name) LIKE ?", "%#{search}%")
  end
end
