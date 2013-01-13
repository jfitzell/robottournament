running
setUp
	super setUp.
	tournament := RTTournament named: self tournamentName.
	tournament clock: RTDummyClock new