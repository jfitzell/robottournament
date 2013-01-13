accessing
players
	^ self hasStarted
		ifTrue: [ players ]
		ifFalse: [ tournament players ]