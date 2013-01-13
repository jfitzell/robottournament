tests
testErrorResponses
	self assertNilMoveForHandler: [ ZnResponse unauthorized: 'foo' ].
	self assertNilMoveForHandler: [ ZnResponse serverError: 'Error' ].
	self assertNilMoveForHandler: [ ZnResponse notFound: '/' ].
	self assertNilMoveForHandler: [ :request | ZnResponse methodNotAllowed: request ].