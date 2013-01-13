tests
testInvalidMove
	maze positionAt: $1 put: (3@3).
	self should: [ maze move: $1 direction: $Q ] raise: RTInvalidMove