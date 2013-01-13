tests
testRounds
	self assert: tournament rounds isEmpty.
	self assert: tournament length = tournament class defaultLength.
	tournament length: (tournament class defaultLength - 1).
	self assert: tournament length = (tournament class defaultLength - 1).
	
	tournament start.
	self assert: tournament rounds size = tournament length.
	tournament rounds withIndexDo: [ :each :i | self assert: each number = i ].
	
	"Make sure we can't modify the returned rounds"
	self deny: (tournament rounds at: 1 put: (RTRound tournament: tournament)) == (tournament rounds at: 1)