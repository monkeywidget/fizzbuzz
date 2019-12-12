def process(num):
   if num % 3 == 0 :  return "Fizz"
   elif num % 5 == 0 :  return "Buzz"
   else : return num

for i in range(100):
   print process(i)
