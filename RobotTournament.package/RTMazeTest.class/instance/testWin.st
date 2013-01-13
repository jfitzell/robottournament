tests
testWin
	maze positionAt: $1 put: (10@2).
	self should: [ maze move: $1 direction: $E ] raise: RTPlayerWin