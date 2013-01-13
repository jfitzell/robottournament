private
prepare
	state isNil ifTrue: [
		state := #prepared.
		players := OrderedCollection withAll: self tournament players.
		games := self tournament game allForRound: self. ]