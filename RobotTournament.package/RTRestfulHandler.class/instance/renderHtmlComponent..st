routes-tournaments
renderHtmlComponent: component
	^ WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | 
			TWBSFADevelopmentLibrary default updateRoot: root.
			(WAVisiblePresenterGuide client: (WAUpdateRootVisitor root: root)) start: component ];
		render: component