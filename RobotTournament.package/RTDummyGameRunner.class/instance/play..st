running
play: aGame
	playSemaphore critical: [
		aGame play.
		played add: aGame ]