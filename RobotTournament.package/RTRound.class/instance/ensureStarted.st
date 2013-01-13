running
ensureStarted
	self hasStarted
		ifFalse: [ self error: 'Round has not started' ]