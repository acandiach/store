class Product < ApplicationRecord
  #validations
  validates :name, :description, :brand_id, :user_id, :category_id, presence: true
  validates :name, length: { minimum: 5 }

  #relationships
  has_one_attached :photo
  belongs_to :brand
  belongs_to :category
  belongs_to :user
  has_many :orders, through: :order_detail, dependent: :destroy
  has_and_belongs_to_many :categories
end
