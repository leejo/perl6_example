#!perl6

my %caps =
	UK          => 'London',
	France      => 'Paris',
	Switzerland => 'Bern'
;

say %caps.keys;
say %caps<UK>;
say %caps<Spain>:exists;

say ( UK => "London" ).WHAT.^methods;

my $a = 'UK';
say %caps{$a};
say %caps{"$a"};
say %caps<$a $a>;
say "---";
say %caps<<$a $a>>;
say "===";

my @caps = %caps;
say @caps;
say @caps.keys;
say @caps.values;
say @caps.kv;
say @caps.kv.perl;

my @foo = <foo bar baz>;
say @foo.keys;
say @foo.values;
say @foo.kv;
