tests
testRedirect
	| move |
	self listenDuring: [ :url |
			| connector |
			connector := RTHttpGetPlayerConnector url: url.
			move := connector move: 'state' timeout: 1000 ]
		handler: [ :request |
			(request url queryKeys includes: 'redirected')
				ifTrue: [ 'move' ]
				ifFalse: [ ZnResponse redirect: '/?redirected' "Not strictly spec-compliant, but Zinc handles path-only redirects (and actually seems to have a bug where it ignores the rest of the passed in URL)" ] ].
	self assert: move = 'move'