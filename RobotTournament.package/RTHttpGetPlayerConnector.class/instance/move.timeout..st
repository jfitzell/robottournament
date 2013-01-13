running
move: stateString timeout: timeoutMilliseconds
	| time move client |
	client := ZnClient new timeout: (timeoutMilliseconds / 1000); yourself.
	
	time := Time millisecondsToRun: [
		[ move := client get: ((ZnUrl fromString: url) ? ('state' -> stateString)) ]
			on: Error
			do: [ :e | ^ nil ] ].
	
	client response isSuccess ifFalse: [ move := nil ].
	
	^ time > timeoutMilliseconds
		ifTrue: [ nil ]
		ifFalse: [ move ]