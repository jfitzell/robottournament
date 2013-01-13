as yet unclassified
move: stateString timeout: timeoutMilliseconds
	| time move |
	time := Time millisecondsToRun: [
		[ move := ZnClient new
			timeout: (timeoutMilliseconds / 1000);
			get: ((ZnUrl fromString: url) ? ('state' -> stateString)) ]
			on: Error
			do: [ :e | ^ nil ] ].
	^ time > timeoutMilliseconds
		ifTrue: [ nil ]
		ifFalse: [ move ]