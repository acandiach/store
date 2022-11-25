class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :products, dependent: :destroy

  enum rol: [:visit, :seller, :admin]

  after_initialize do
    if self.new_record?
      self.rol ||= :visit
    end
  end

end
