class FizzBuzz
  def emit_on(i)
    print "Fizz" if i%3 == 0
    print "Buzz" if i%5 == 0
    print i unless i%3 == 0 || i%5 == 0
    print "\n"
  end

  def fizzbuzz
    (1..100).each { |i| emit_on i }
  end
end

FizzBuzz.new.fizzbuzz
