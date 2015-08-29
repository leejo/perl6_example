#!perl6

calculate_freq(
	"/Users/leejohnson/working/leejo.github.io/_posts/2015-08-02-a_lot_of_huf.md",
	my %words,
);

display_freqs( %words,threshold => 5 );

sub calculate_freq( Str $filename, %words ) {
	for $filename.IO.words {
		%words{$_}++;
	}
}

sub display_freqs( %words,Int :$threshold = 0 ) {
	for %words.kv -> $word, $count {
		say "$word : $count"
			if $count > $threshold;
	}
}

# or
#
#for $file.IO.words.Bag.pairs.sort(*.value) {
#	say "{.value} : {.key}";
#}
