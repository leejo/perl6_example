#!perl6

my $int = 42;
inc( $int );

say $int;

sub inc ( $int is rw ) {
	return ++$int;
}
