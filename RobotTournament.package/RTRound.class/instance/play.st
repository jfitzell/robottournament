running
play
	self ensureNotStarted.
	
	state := #started.
	players := OrderedCollection withAll: self tournament players.
	games := self tournament game allForRound: self.
	runner runAll: games.
	state := #ended