# frozen_string_literal: true

module FourtyTwo
  def fourty_two?
    self == 42
  end
end

class Integer
  include FourtyTwo
end

puts "42.fourty_two? #{42.fourty_two?}"
puts "11.fourty_two? #{11.fourty_two?}"
