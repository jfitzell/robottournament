running
kick
	(self hasEnded not and: [ self timeRemaining <= 0 ]) ifTrue: [
		self nextRound start.
		nextStart := clock now + (Duration seconds: self interval) ]