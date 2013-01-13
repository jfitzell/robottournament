routes-tournaments
renderHtmlComponent: component
	^ WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | 
			TWBSDevelopmentLibrary default updateRoot: root.
			(WAVisiblePresenterGuide client: (WAUpdateRootVisitor root: root)) start: component ];
		render: component