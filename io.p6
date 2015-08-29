#!perl6

my $num = (1..100).pick;
say $num;

for ^7 {
	given prompt( "Guess > " ) -> $guess {

		when $guess == $num {
			say "correct!";
			last;
		}
		default {
			$guess > $num
				?? say "Too high"
				!! say "Too low";
			last if prompt( "Again? yes/no > " ) !~~ /y/;
		}
	}
}
