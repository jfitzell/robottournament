accessing
currentMapString
	| temp |
	temp := map deepCopy.
	positions keysAndValuesDo: [ :player :position |
		(temp at: position y) at: position x put: player ].
	^ String streamContents: [ :stream |
		temp
			do: [ :row | row do: [ :char | stream nextPut: char ] ]
			separatedBy: [ stream cr ] ]