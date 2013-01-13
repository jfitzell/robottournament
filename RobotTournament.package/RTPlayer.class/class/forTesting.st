*robottournament-tests
forTesting
	^ (self named: 'Test Player')
		runner: RTDummyPlayerRunner new;
		yourself