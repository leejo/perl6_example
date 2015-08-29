#!perl6

for 1 .. 50 {
	print "$_: ";
	when * % 3 == 0 && * % 5 == 0 { say "FizzBuzz"; }
	when * % 5 == 0 { say "Fizz"; }
	when * % 3 == 0 { say "Buzz"; }
	default { say "" }
}
