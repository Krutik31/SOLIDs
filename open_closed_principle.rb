# We have Checkout class as below as we were accepting only COD.

class Checkout
  def initialize(payment_type)
    @payment_type = payment_type
  end

  def redirect
    puts 'Order placed :)'
  end
end

obj = Checkout.new('cod')
obj.redirect # Order placed :)

# Now let say we want to accept payment by card.
# So, we should redirect a user to the razorpay page after checkout if payment type is card.
# and show the order placed message if the payment type is COD.

class RedirectAfterCODCheckout
  def redirect
    puts 'Order placed :)'
  end
end

class RedirectAfterCardCheckout
  def redirect
    puts 'Redirected to razorpay page.'
  end
end

PAYMENT = {
  'cod' => RedirectAfterCODCheckout,
  'card' => RedirectAfterCardCheckout
}

class Checkout
  def initialize(payment_type)
    @payment_type = payment_type
  end

  def redirect
    PAYMENT[@payment_type].new.redirect
  end
end

obj1 = Checkout.new('cod')
obj1.redirect      # Order placed :)

obj2 = Checkout.new('card')
obj2.redirect      # Redirected to razorpay page.
