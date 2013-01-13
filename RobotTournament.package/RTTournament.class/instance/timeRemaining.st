accessing
timeRemaining
	^ pausedTimeRemaining ifNil: [
		nextStart
			ifNil: [ 0 ]
			ifNotNil: [ :start | (start - clock now) asSeconds ] ]