accessing
interval
	^ interval ifNil: [ interval := self class defaultInterval ]