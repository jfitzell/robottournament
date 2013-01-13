running
start
	self isRunning ifTrue: [ ^ self ].
	self isPaused
		ifTrue: [
			nextStart := clock now + (Duration seconds: pausedTimeRemaining).
			pausedTimeRemaining := nil ]
		ifFalse: [
			rounds := self createRounds.
			nextStart := clock now + (Duration seconds: self interval) ]