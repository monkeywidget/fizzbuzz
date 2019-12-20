function fizzbuzz(n) {
  if (n % 15 == 0) {
    process.stdout.write('FizzBuzz');
  } else if (n % 3 == 0) {
    process.stdout.write('Fizz');
  } else if (n % 5 == 0) {
    process.stdout.write('Buzz');
  } else {
    process.stdout.write(n.toString());
  }

  process.stdout.write(" ");
}

for (let i = 0; i <= 100; i++) {
  fizzbuzz(i);
}
