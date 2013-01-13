private
nextKey
	^ lastKey := (lastKey ifNil: [ 0 ]) + 1