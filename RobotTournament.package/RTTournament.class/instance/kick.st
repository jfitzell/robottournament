running
kick
	(self isRunning and: [ self timeRemaining <= 0 ]) ifTrue: [
		self nextRound ifNotNil: [ :round |
			round start.
			nextStart := self nextRound ifNotNil: [ clock now + (Duration seconds: self interval) ] ] ]