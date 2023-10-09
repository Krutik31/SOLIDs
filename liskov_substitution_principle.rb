class Checkout
  def redirect
    puts 'No redirect method existed!'
  end
end

class RedirectAfterCODCheckout < Checkout
  def redirect
    puts 'Redirect after COD'
  end
end

class RedirectAfterCardCheckout < Checkout
  def redirect
    puts 'Redirect after Card'
  end
end

obj1 = RedirectAfterCODCheckout.new
obj1.redirect      # Redirect after COD

obj2 = RedirectAfterCardCheckout.new
obj2.redirect      # Redirect after Card

# Now in future, if we want to remove redirect method from RedirectAfterCODCheckout class then we can do it easily without making changes in objects and breaking things.
