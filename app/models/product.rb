class Product < ApplicationRecord
  belongs_to :brand
  belongs_to :category
  belongs_to :user
  has_many :orders, through: :order_detail, dependent: :destroy
  has_and_belongs_to_many :categories

  validates :name, presence: true
  validates :description, presence: true
  
end
