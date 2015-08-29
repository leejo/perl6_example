#!perl6

say "おはい".chars;

say "ペルくのすごいですよ！".uc;

say 'yo'.encode('utf-8').say;
say "おはい".encode('utf-8').say;

my $str = "A\c[COMBINING DOT ABOVE]\c[COMBINING DOT BELOW]";
say $str.chars;
say $str.codes;
$str = $str.NFD;
