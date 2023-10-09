class OrderCheckout
  def initialize(order)
    @order = order
  end

  def checkout
    # Checkout logic will written here...
    puts 'order placed successfully :)'
  end
end

class SendCheckoutMail
  def initialize(order)
    @order = order
  end

  def send_order_mail
    # Sending mail logic here...
    puts 'Mail sent! Please check your inbox.'
  end
end

checkout_obj = OrderCheckout.new('order details')
checkout_obj.checkout
mailer_obj = SendCheckoutMail.new('order details')
mailer_obj.send_order_mail

# Here we have created another class for sending mail functionality after checkout rather than defining send_order_mail method in OrderCheckout class.
# A class is responsible for only a single feature here.
