running
playAll: aCollection
	playAllSemaphore critical: [
		aCollection do: [ :each | self play: each ] ]