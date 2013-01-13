private
ensureNotStarted
	self ensureNotEnded.
	self hasStarted
		ifTrue: [ self errorStarted ]