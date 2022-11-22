class Product < ApplicationRecord
  belongs_to :brand
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true
  
end
