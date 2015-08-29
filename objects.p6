#!perl6

class ScoreBoard {

	# ! means privately scopes
	has %!player-points;
	has Str $.name;

	method score( $player,$points ) {
		%!player-points{$player} += $points;
	}

	method ranking() {
		%!player-points.pairs.sort({ -.value });
	}

	# gets called at instantiation
	submethod BUILD(:@players) {
		for @players -> $player {
			%!player-points{$player} = 0;
		}
	}
}

say my $ScoreBoard = ScoreBoard.new(
	players => <<Lee Laurent Samuel Albert Werner Jody>>,
	name    => "My Scoreboard",
);

$ScoreBoard.score( "Lee",3 );

say $ScoreBoard.ranking;
