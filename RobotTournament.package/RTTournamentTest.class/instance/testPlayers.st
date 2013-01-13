tests
testPlayers
	| testPlayer |
	testPlayer := RTPlayer forTesting.
	self assert: tournament players isEmpty.
	tournament players add: testPlayer.
	self assert: tournament players isEmpty.
	self assert: testPlayer == (tournament addPlayer: testPlayer).
	self assert: tournament players size = 1.
	tournament playersDo: [ :each | self assert: each == testPlayer ]