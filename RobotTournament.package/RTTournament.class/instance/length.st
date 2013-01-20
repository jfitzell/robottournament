accessing
length
	^ length ifNil: [ length := self class defaultLength ]