class Ability
  include CanCan::Ability

def initialize(user)
alias_action :create, :read, :update, :destroy, :to => :crud
 
  
  if user.admin?
      can :crud, Product  # Admin can manage (create, read, update, delete) products
  else
      can :manage, Cart
      can :read, Product  # Regular customers can only read products
  end
end

  
end
 

