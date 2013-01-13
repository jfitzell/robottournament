as yet unclassified
initializeWithTournaments: someTournaments 
	self initialize.
	tournaments := someTournaments.
	
	self addDecoration: (TWBSBootstrapDecoration new)