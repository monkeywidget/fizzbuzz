import sys

# python 2 quirks:
# - doesn't have print( ???, end ='')
# - print includes a newline by default
# - print with a comma after will suppress the newline
def flag_version_process(num):
   flag = 0
   if num % 3 == 0 : print 'Fizz', ; flag = 1
   if num % 5 == 0 : print 'Buzz', ; flag = 1
   if flag == 0 : print str(num),
   # print # uncomment for newlines

def flag_version():
   print "flag version:"
   for i in range(1,100):
        flag_version_process(i)

def join_version_process(num, t):
   if num % 15 == 0 : t.append("Fizz Buzz"); return
   if num % 3 == 0  :  t.append("Fizz"); return
   if num % 5 == 0  : t.append("Buzz"); return
   t.append("%d" % num)

def join_version():
   print "join version:"

   buffer = []
   for i in range(1,100):
        join_version_process(i, buffer)
   print " ".join(buffer)

def main():
   flag_version() # implemented the "check for no answer" way
   join_version() # implemented the "check for 15 way"

if __name__ == "__main__":
    main()
