t = []
for i in range(100) :
  if i % 15 == 0 : t.append("FizzBuzz"); continue
  if i % 3 == 0 :  t.append("Fizz"); continue
  if i % 5 == 0 : t.append("Buzz"); continue
  t.append("%d" % i)
print " ".join(t)


