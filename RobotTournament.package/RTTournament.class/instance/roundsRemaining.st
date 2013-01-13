accessing
roundsRemaining
	^ self hasStarted
		ifTrue: [ rounds count: [ :each | each hasStarted not ] ]
		ifFalse: [ self length ]