running
ensureNotEnded
	self hasEnded
		ifTrue: [ self error: 'Round has already ended' ]