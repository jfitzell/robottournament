running
play
	self ensureNotEnded.
	state = #playing ifTrue: [ self errorStarted ].
	self prepare.
	
	state := #playing.
	Transcript show: self name; cr.
	runner playAll: games.
	state := #ended