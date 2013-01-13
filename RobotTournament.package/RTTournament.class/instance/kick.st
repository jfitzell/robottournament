running
kick
	(self isRunning and: [ self timeRemaining <= 0 ])
		ifTrue: [ self playRound ]