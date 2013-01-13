initialization
initialize
	super initialize.
	playAllSemaphore := Semaphore forMutualExclusion.
	playSemaphore := Semaphore forMutualExclusion.
	stillToPlay := OrderedCollection new.
	played := OrderedCollection new