running
playPlayer: aPlayer
	| move |
	[ [ move := super playPlayer: aPlayer.
	maze move: (players indexOf: aPlayer) asString first direction: move first ]
				on: RTPlayerWin
				do: [ :e | self recordWinner: aPlayer ] ]
				on: Error
				do: [ :e | self recordForfeit: aPlayer ].
	^ move