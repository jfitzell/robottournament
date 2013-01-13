accessing
rounds
	^ (rounds ifNil: [ rounds := (1 to: self class defaultLength) collect: [ :i | RTRound tournament: self ] ]) copy