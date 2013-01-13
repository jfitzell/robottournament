setup
setUp
	super setUp.
	player := RTPlayer named: self playerName.
	player connector: RTDummyPlayerConnector new