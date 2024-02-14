class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable , :confirmable


has_many :carts
has_many :products, through: :carts



 enum :role, { customer: 0, admin: 1}
 def admin? 
  role== "admin"
end 

def customer? 
  role== "customer"
end



end
