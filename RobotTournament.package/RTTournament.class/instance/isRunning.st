testing
isRunning
	^ self hasStarted and: [ self hasEnded not and: [ self isPaused not ] ]