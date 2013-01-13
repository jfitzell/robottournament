private
winnerMove1: move1 move2: move2
	| valid winner |
	valid := self validMoves.
	winner := ((valid indexOf: move1) - (valid indexOf: move2) + valid size) rem: valid size.
	^ players at: winner ifAbsent: [ nil ]