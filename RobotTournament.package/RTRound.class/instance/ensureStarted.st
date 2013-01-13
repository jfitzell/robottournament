private
ensureStarted
	self hasStarted
		ifFalse: [ self errorNotStarted ]