class OrderMailer < ApplicationMailer

def order_confirmation_email(user, cart)
  @user = user
  @cart = cart
  @confirmation_link = url_for(action: 'confirm_order', token_id: @cart.token, controller: 'carts', only_path: false)
  mail(to: @user.email, subject: 'Order Confirmation')
end





end
