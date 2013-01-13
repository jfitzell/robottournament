tests
testStart
	| runner a b |
	a := tournament addPlayer: (RTPlayer forTesting).
	b := tournament addPlayer: (RTPlayer forTesting).
	round runner: (runner := RTDummyGameRunner new).
	self deny: round hasStarted.
	self deny: round hasEnded.
	runner pause: [.
		round start.
		"By the time #start returns, the Round's state should be set to run"
		self should: [ round start ] raise: Error. "Already started"
		self assert: round hasStarted.
		self deny: round hasEnded.
		self assert: round players size = 2 ].
	runner waitForEmpty.
	Processor yield.
	self assert: round hasStarted.
	self assert: round hasEnded.
	self should: [ round start ] raise: Error "Already ended"