tests
testStart
	self deny: round hasStarted.
	self deny: round hasEnded.
	"prevent #play from finishing"
	round start.
	self should: [ round start ] raise: Error. "Already started"
	self assert: round hasStarted.
	self deny: round hasEnded.
	"resume and wait for #play to finish"
	self assert: round hasStarted.
	self assert: round hasEnded.
	self should: [ round start ] raise: Error "Already ended"