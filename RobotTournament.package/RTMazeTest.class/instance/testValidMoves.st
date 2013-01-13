tests
testValidMoves
	maze positionAt: $1 put: (3@3).
	maze move: $1 direction: $N.
	self assert: (maze positionAt: $1) = (3@2).
	maze move: $1 direction: $S.
	self assert: (maze positionAt: $1) = (3@3).
	maze move: $1 direction: $E.
	self assert: (maze positionAt: $1) = (4@3).
	maze move: $1 direction: $W.
	self assert: (maze positionAt: $1) = (3@3)