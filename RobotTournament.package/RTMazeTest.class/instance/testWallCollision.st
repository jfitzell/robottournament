tests
testWallCollision
	maze positionAt: $1 put: (2@2).
	self should: [ maze move: $1 direction: $N ] raise: RTWallCollision