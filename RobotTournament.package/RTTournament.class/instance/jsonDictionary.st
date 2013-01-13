as yet unclassified
jsonDictionary
	^ Dictionary new
		at: #name put: self name;
		at: #numberOfRounds put: self length;
		at: #game put: self game name;
		at: #secondsBetweenRounds put: self interval;
		at: #roundsRemaining put: self roundsRemaining;
		at: #secondsToNextRound put: self timeRemaining;
		yourself