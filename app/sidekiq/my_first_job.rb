class MyFirstJob
  include Sidekiq::Job

  def perform(user_id, cart_id)
    # Retrieve the user and cart objects using their IDs
    user = User.find(user_id)
    cart = Cart.find(cart_id)
    OrderMailer.order_confirmation_email(user, cart).deliver_now
  end
end

