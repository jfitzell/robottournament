helpers
renderHtmlComponent: component
	^ WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | 
			JQDevelopmentLibrary default updateRoot: root.
			TWBSDevelopmentLibrary default updateRoot: root.
			(WAVisiblePresenterGuide client: (WAUpdateRootVisitor root: root)) start: component ];
		render: (component addDecoration: TWBSBootstrapDecoration new; yourself)