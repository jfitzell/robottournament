tests
testName
	self assert: player name = self playerName.
	player name: 'test'.
	self assert: player name = 'test'