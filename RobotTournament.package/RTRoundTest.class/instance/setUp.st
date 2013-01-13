running
setUp
	super setUp.
	tournament := RTTournament forTesting.
	tournament start.
	round := tournament rounds first