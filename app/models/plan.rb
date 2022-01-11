class Plan < ApplicationRecord
  acts_as_taggable # for tags list
  acts_as_taggable_on :categories # for categories list (also using taggable gem)
  validates :name, presence: true
  acts_as_votable # votable gem

  belongs_to :user
  has_many :resources, dependent: :destroy
  has_many :diary_entries, dependent: :destroy
  has_many :tasks, dependent: :destroy
  has_many :goals, dependent: :destroy
  has_many :likes, dependent: :destroy

  amoeba do
    # include_association %i[tag_list category_list resources goals]
    include_association %i[resources goals taggings]
  end

  def self.search(search)
    #where("lower(name) LIKE ?", "%#{search}%")
    where('name LIKE ?', "%#{search}%") + tagged_with(search)
  end
end
