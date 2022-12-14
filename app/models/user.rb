class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :products, dependent: :destroy
  has_many :orders, dependent: :destroy

  enum rol: [:seller, :admin]
  #after_initialize :set_default_rol, :if => :new_record?
  #def set_default_rol
    #self.rol ||= :visit
  #end
end
