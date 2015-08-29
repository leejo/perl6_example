#!perl6

subset Hour of Int where 0 <= * <= 23;

class DaySchedule {

	has Hour $.opening = 9;
	has Hour $.closing = 17;
	has Str %!appointments{Hour};

	method add-appointment( Str :$name,Hour :$hour ) {

		die "earlier than {$.opening}"
			if $hour < $.opening;

		die "later than {$.closing}"
			if $hour > $.closing;

		die "conflict with {%!appointments{$hour}}"
			if %!appointments{$hour};

		%!appointments{$hour} = $name;
	}
}

say my $DaySchedule = DaySchedule.new(
);

$DaySchedule.add-appointment( name => 'Lee', hour => 10 );
#$DaySchedule.add-appointment( name => 'Lee', hour => 8 );
#$DaySchedule.add-appointment( name => 'Lee', hour => 18 );
#$DaySchedule.add-appointment( name => 'Lee', hour => 10 );
