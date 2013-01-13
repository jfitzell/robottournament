testing
hasEnded
	^ self hasStarted and: [ rounds allSatisfy: [ :each | each hasEnded ] ]