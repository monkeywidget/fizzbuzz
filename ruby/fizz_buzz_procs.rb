class FizzBuzzProcs

  # WHAT IF we wanted an arbitrary number of Fizz/Buzz divisors?

  attr_accessor :emitters

  # in this version we make a Array of Procs which we call "emitters"
  # an "emitter" returns a given string ("Fizz") if the dividend provided (e.g. 6)
  # is evenly divisible by the Proc's divisor (3)
  # if not, it returns nil

  # @param [Hash] of int -> String - the divisors and which outputs they make
  def initialize(divisors_mappings)
    @emitters = []

    divisors_mappings.keys.sort.each do |divisor|     # keeps the divisors in numerical orde
      @emitters << Proc.new {|dividend|
        "#{divisors_mappings[divisor]}" if dividend % divisor == 0
      }
    end
  end

  # given a dividend,
  # Emit from all (in order), or none, if appropriate
  # example: fizzbuzz default (3,5) : 
  # example: 10 will return "Buzz"
  # example: 15 will return "FizzBuzz"
  # example: 27 will return "Fizz"
  # example: 28 will return nil
  # 
  # @param [Hash] of Proc - each one an emitter, above
  # @param [int] the dividend to make test against
  # @return [String] if any of the emitters divided evenly
  def emit_for_dividend(i)
    output_for_i = []

    emitters.each do |emitter|
      output_for_i << emitter.call(i)    # could be a nil if nothing emitted
    end

    output_for_i.join
  end

  # @param [Hash] of int -> String - the divisors and which outputs they make
  # @param [int] the number greater than 1 we want to be the upper limit of the dividend range
  def fizzbuzz(up_to)

    (1..up_to).each do |i|
      puts "#{i}: #{emit_for_dividend i}"
    end

  end

  # alternately: fizzbuzz : if we want to play with more proc
  # emit_for_x = Proc.new { |x| emit_for_dividend(x) }
  # (1..up_to).each do |i|
  #  puts "#{i}: #{emit_for_x.call i}"
  # end


end


# run the FizzBuzz base problem:

fb = FizzBuzzProcs.new( Hash[ 3 => "Fizz", 5 => "Buzz"])
fb.fizzbuzz 100


