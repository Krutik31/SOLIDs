class RedirectAfterCheckout
  def redirect
    puts 'No redirect method existed!'
  end
end

class RedirectAfterCODCheckout < RedirectAfterCheckout
  def redirect
    puts 'Redirect after COD'
  end
end

class RedirectAfterCardCheckout < RedirectAfterCheckout
  def redirect
    puts 'Redirect after Card'
  end
end

obj1 = RedirectAfterCODCheckout.new
obj1.redirect      # Redirect after COD

obj2 = RedirectAfterCardCheckout.new
obj2.redirect      # Redirect after Card

# In LSP example we have Checkout class as a base class and it may contain some extra methods related to checkouts.
# in ISP here, we have created RedirectAfterCheckout class as base class, which contains only redirect method.
# So other subclasses are not dependent on any generic Checkout class.
