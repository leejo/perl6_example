#!perl6

my @words = <foo bar baz boz>;

say @words.WHAT;
say @words.elems;
say @words[0].WHAT;
say @words[0..^2].join( "-" );
@words[0] := @words[3];
say @words.join( "-" );

my @more = @words;
@more[0] = 'foo';
say @more.join( "-" );
say @words.join( "-" );

my @even_more := @words;
@even_more[0] = 'fee';
say @even_more.join( "-" );
say @words.join( "-" );

my @x;
my @y := @x;

my @locked := << "Hello World" Boo >>;
@locked[0] = "Goodbye";
