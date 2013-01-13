helper
setsOfPlayers: players sized: size 
	| smallerSets results |
	size = 1 ifTrue: [ ^ players collect: [ :each | Array with: each ] ].
	
	smallerSets := self setsOfPlayers: players sized: size - 1.
	results := OrderedCollection new.
	players do: [ :player |
		smallerSets do: [ :set |
			(set includes: player) ifFalse: [ results add: (set copyWith: player) ] ] ].
	^ results