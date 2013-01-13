tests
testResultsBeforePlay
	| game |
	game := self newGame.
	game players do: [ :player |
		self assert: (game results at: player) = 0 ]