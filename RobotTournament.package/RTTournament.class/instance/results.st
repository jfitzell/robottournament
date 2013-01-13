accessing
results
	| results |
	results := IdentityDictionary new.
	rounds do: [ :round |
		round results keysAndValuesDo: [ :player :score |
			results at: player put: (results at: player ifAbsent: [ 0 ]) + score ] ].
	^ results