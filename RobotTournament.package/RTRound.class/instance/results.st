accessing
results
	| results |
	self ensureStarted.
	results := IdentityDictionary new.
	games do: [ :game |
		game results keysAndValuesDo: [ :player :score |
			results at: player put: (results at: player ifAbsent: 0) + score ] ].
	^ results