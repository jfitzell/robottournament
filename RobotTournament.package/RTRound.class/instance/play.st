running
play
	self ensureNotEnded.
	state = #playing ifTrue: [ self errorStarted ].
	
	state := #playing.
	players := OrderedCollection withAll: self tournament players.
	games := self tournament game allForRound: self.
	runner playAll: games.
	state := #ended