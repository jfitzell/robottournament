tests
testPlayerCollision
	maze positionAt: $1 put: (2@2).
	maze positionAt: $2 put: (2@3).
	self should: [ maze move: $1 direction: $S ] raise: RTPlayerCollision