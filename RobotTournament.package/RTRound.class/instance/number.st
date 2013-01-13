accessing
number
	^ self tournament rounds indexOf: self ifAbsent: [ self error: 'Round not found in tournament' ]