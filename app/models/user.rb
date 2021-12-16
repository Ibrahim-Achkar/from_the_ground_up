class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :plans, dependent: :destroy
  has_many :likes, dependent: :destroy
  # has_many :plans, through: :liked_plans, as: :liked_plans
  # has_many :liked_plans, class_name: 'Plans', through: :liked_plans

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
