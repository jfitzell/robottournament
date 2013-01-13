tests
testRunningStates
	| round remaining |
	self deny: tournament hasStarted.
	self deny: tournament hasEnded.
	self deny: tournament isRunning.
	self deny: tournament isPaused.
	tournament start.
	self assert: tournament hasStarted.
	self deny: tournament hasEnded.
	self assert: tournament isRunning.
	self deny: tournament isPaused.
	self assert: tournament timeRemaining = tournament interval.
	
	round := tournament rounds first.
	self shouldnt: [ tournament start ] raise: Error. "No op"
	self assert: round == tournament rounds first.
	self assert: tournament hasStarted.
	self deny: tournament hasEnded.
	self assert: tournament isRunning.
	self deny: tournament isPaused.
	self assert: tournament timeRemaining = tournament interval.

	tournament clock add: (tournament interval / 2).
	remaining := tournament timeRemaining.
	tournament pause.
	self assert: tournament hasStarted.
	self deny: tournament hasEnded.
	self deny: tournament isRunning.
	self assert: tournament isPaused.
	tournament clock add: tournament interval. "If the tournament was running a game should have started"
	tournament kick.
	self deny: tournament rounds first hasStarted.
	self assert: tournament timeRemaining = remaining.
	tournament clock add: tournament interval.
	tournament start.
	self assert: tournament timeRemaining = remaining.
	self assert: tournament hasStarted.
	self deny: tournament hasEnded.
	self assert: tournament isRunning.
	self deny: tournament isPaused.
	
	tournament playRemainingRounds.
	self assert: tournament hasStarted.
	self assert: tournament hasEnded.
	self deny: tournament isRunning.
	self deny: tournament isPaused