#!perl6

for 1 .. 50 {
	print "$_: ";
	when * %% (3 & 5) { say "FizzBuzz"; }
	when * %% 5 { say "Fizz"; }
	when * %% 3 { say "Buzz"; }
	default { say "" }
}
