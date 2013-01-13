running
ensureNotStarted
	self ensureNotEnded.
	self hasStarted ifTrue: [ self error: 'Round has already started' ].