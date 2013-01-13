private
recordTie
	self players do: [ :each | self recordScore: 1 for: each ]