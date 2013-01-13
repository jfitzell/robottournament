running
start
	self ensureNotStarted.
	self prepare.
	
	[ self play ] fork