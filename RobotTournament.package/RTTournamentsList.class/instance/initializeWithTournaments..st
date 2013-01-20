initialization
initializeWithTournaments: someTournaments 
	self initialize.
	tournaments := someTournaments.
	
	self addDecoration: (TWBSBootstrapDecoration new)