tests
testRounds
	self assert: tournament rounds size = tournament class defaultLength.
	tournament rounds withIndexDo: [ :each :i | self assert: each number = i ].
	
	"Make sure we can't modify the returned rounds"
	self deny: (tournament rounds at: 1 put: (RTRound tournament: tournament)) == (tournament rounds at: 1)