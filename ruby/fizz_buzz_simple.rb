class FizzBuzzSimple

  def fizzbuzz ()

    (1..100).each do |i|

      if i%15 == 0
        print "FizzBuzz "; next
      elsif i%3 == 0
        print "Fizz "; next
      elsif i%5 == 0
        print "Buzz "; next
      else
        print i, " "
      end # end switch

    end # end loop

  end # end method

end # end class
