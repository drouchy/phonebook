require "factory_girl"

Dir[Rails.root.join("test/factories/*.rb")].each {|f| require f}

def random_integer_with_leading_zero(nb_digit)
  "%0#{nb_digit}d" % rand(nb_digit*10)
end
