running
play
	self ensureNotEnded.
	state = #playing ifTrue: [ self errorStarted ].
	self prepare.
	
	state := #playing.
	runner playAll: games.
	state := #ended