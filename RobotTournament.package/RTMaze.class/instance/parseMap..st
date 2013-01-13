private
parseMap: mapString
	^ Array streamContents: [ :arrayRows |
		(mapString subStrings: String cr) do: [ :eachRow |
			arrayRows nextPut: (Array streamContents: [ :arrayCols |
				eachRow do: [ :eachChar | arrayCols nextPut: eachChar ] ]) ] ]