running
playRound
	self nextRound ifNotNil: [ :round | 
		round play.
		nextStart := self nextRound ifNotNil: [ clock now + (Duration seconds: self interval) ] ]