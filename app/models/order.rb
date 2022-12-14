class Order < ApplicationRecord
  belongs_to :user
  has_many :products, through: :order_detail, dependent: :destroy
end
