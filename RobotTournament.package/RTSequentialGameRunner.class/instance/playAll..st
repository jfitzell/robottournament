running
playAll: aCollection
	aCollection do: [ :each | self play: each ]