*robottournament-tests
forTesting
	^ (self named: 'Test Player')
		connector: RTDummyPlayerConnector new;
		yourself