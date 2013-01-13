as yet unclassified
renderContentOn: html
	html table
		class: 'table';
		class: 'table-striped';
		with: [
			| selectorDictionary |
			selectorDictionary := self selectorDictionary.
			
			html tableHead: [	
				html tableRow:  [
					selectorDictionary keys do: [ :aHeading |
						html tableHeading: aHeading ] ] ].
			
			html tableBody: [
				tournaments do: [ :aTournament |
					html tableRow:  [
						selectorDictionary do: [ :aValuable |
							html tableData: (aValuable value: aTournament) ] ] ] ] ]