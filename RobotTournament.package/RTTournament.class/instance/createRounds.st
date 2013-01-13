private
createRounds
	^ (1 to: self length) collect: [ :i | RTRound tournament: self ]