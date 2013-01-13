tests
testRunningStates
	self deny: tournament hasStarted.
	self deny: tournament hasEnded.
	self deny: tournament isRunning.
	tournament start.
	self assert: tournament hasStarted.
	self deny: tournament hasEnded.
	self assert: tournament isRunning.
	tournament rounds do: [ :each | each play ].
	self assert: tournament hasStarted.
	self assert: tournament hasEnded.
	self deny: tournament isRunning