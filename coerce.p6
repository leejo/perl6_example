#!perl6

my $bool = !"";
say $bool.WHAT;

my $foo = "42";
say $foo.WHAT;
say (+$foo).WHAT;
say (+"$foo+1i").WHAT;
say (+("$foo" ~ "e4")).WHAT;

say (+$bool).WHAT;

say (+"0xBEEF").WHAT;
