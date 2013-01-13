helpers
pairsFor: aRound do: aBlock
	^ aRound players do: [ :p1 |
		aRound players do: [ :p2 |
			p1 = p2 ifFalse: [ aBlock value: p1 value: p2 ] ] ]