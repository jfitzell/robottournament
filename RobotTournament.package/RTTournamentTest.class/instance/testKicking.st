tests
testKicking
	tournament length: 2.
	tournament start.
	self assert: tournament timeRemaining = tournament interval.
	tournament kick.
	self assert: tournament timeRemaining = tournament interval.
	tournament clock add: 10.
	self assert: (tournament timeRemaining = (tournament interval - 10)).
	tournament clock add: (tournament timeRemaining - 1).
	self assert: tournament timeRemaining = 1.
	tournament kick.
	self deny: tournament rounds first hasStarted.
	tournament clock add: 1.
	self assert: tournament timeRemaining = 0.
	tournament kick.
	self assert: tournament rounds first hasStarted.
	self assert: tournament timeRemaining = tournament interval.
	tournament clock add: (tournament interval + 1).
	self assert: tournament timeRemaining = -1.
	tournament kick.
	self assert: tournament rounds second hasStarted.
	self assert: tournament timeRemaining = 0