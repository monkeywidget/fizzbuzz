# WHAT IF we wanted an arbitrary number of Fizz/Buzz divisors?
#
# in this version we make a Array of Procs which we call "emitters"
# an emitter (Fizz, 3) : returns a given string ("Fizz")
#                        iff the dividend provided (e.g. 6) is evenly divisible by the Proc's divisor (3)
#                        else it returns nil
#
# so in the original question there would be 2 emitters: { 3 => "Fizz", 5 => "Buzz" }
class FizzBuzzProcs
  # @param [Hash] divisors_mappings of int -> String - the divisors and which outputs they make
  def initialize(divisors_mappings)
    @emitters = []

    divisors_mappings.keys.sort.each do |divisor|
      @emitters << Proc.new { |dividend| "#{divisors_mappings[divisor]}" if dividend % divisor == 0 }
    end
  end

  # @param [int] dividend to make test against
  # @return [String] cat'd emitters iff any of the emitters divided evenly, else the dividend
  def emit_for_dividend(dividend)
    emitted = @emitters.map { |emitter| emitter.call(dividend) }.join
    emitted.empty? ? dividend : emitted
  end

  # @param [int] up_to the number we want to be the upper limit of the dividend range
  def fizzbuzz(up_to)
    (1..up_to).each { |ordinal| puts emit_for_dividend ordinal }
  end
end

FizzBuzzProcs.new(3 => "Fizz", 5 => "Buzz").fizzbuzz 100
